import 'dart:io';
import 'dart:math';

import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:socialnetwork/graphql/request_localisation.data.gql.dart';
import 'package:socialnetwork/graphql/request_localisation.req.gql.dart';
import 'package:socialnetwork/graphql/request_localisation.var.gql.dart';
import 'package:socialnetwork/src/utils/SaveData.dart';

const randomMarkerNum = 10;

const accessToken = "sk.eyJ1IjoieWFubmFybzM1IiwiYSI6ImNrejF1OHk0ejFoOTcycHFrYml1OTd2NG0ifQ.66HA_DbciPhDVdJSo6LrFQ";

class CustomMarker extends StatefulWidget {
  const CustomMarker({Key? key}) : super(key: key);

  @override
  State createState() => CustomMarkerState();
}

class CustomMarkerState extends State<CustomMarker> {
  final Client client = GetIt.I<Client>();
  final Random _rnd = Random();

  late MapboxMapController _mapController;
  final List<Marker> _markers = [];
  final List<_MarkerState> _markerStates = [];

  void _addMarkerStates(_MarkerState markerState) {
    _markerStates.add(markerState);
  }

  void _onMapCreated(MapboxMapController controller) {
    _mapController = controller;

    var param = <LatLng>[];
    for (var i = 0; i < randomMarkerNum; i++) {
      final lat = _rnd.nextDouble() * 20 + 30;
      final lng = _rnd.nextDouble() * 20 + 125;
      param.add(LatLng(lat, lng));
    }

    param.add(LatLng(35.0, 135.0));

    controller.addListener(() {
      if (controller.isCameraMoving) {
        _updateMarkerPosition();
      }
    });
  }

  void _onStyleLoadedCallback() {
    print('onStyleLoadedCallback');
  }

  void _onMapLongClickCallback(Point<double> point, LatLng coordinates) {
    //_addMarker(point, coordinates);
  }

  void _onCameraIdleCallback() {
    _updateMarkerPosition();
  }

  void _updateMarkerPosition() {
    final coordinates = <LatLng>[];

    for (final markerState in _markerStates) {
      coordinates.add(markerState.getCoordinate());
    }

    _mapController.toScreenLocationBatch(coordinates).then((points) {
      _markerStates.asMap().forEach((i, value) {
        _markerStates[i].updatePosition(points[i]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Operation(
      client: client,
      operationRequest: GFriendsLocalisationReq((b) {
        b.vars.user.id = SaveData.id;
      }),
      builder: (BuildContext context, OperationResponse<GFriendsLocalisationData, GFriendsLocalisationVars>? response, Object? error) {
        if (response!.loading) return Center(child: CircularProgressIndicator());

        if (response.hasErrors) return Text("Error");

        var point = Point<double>(35.0, 135.0);

        var user = response.data!.users.first;

        for (var friend in user.friends) {
          if (friend.location == null) continue;

          LatLng coordinates = LatLng(friend.location!.latitude, friend.location!.longitude);
          _markers.add(Marker(friend.id, coordinates, point, _addMarkerStates, friend.image!, false, friend.firstName + " " + friend.lastName));
        }

        LatLng coordinates = LatLng(user.location!.latitude, user.location!.longitude);

        _markers.add(Marker(user.id, coordinates, point, _addMarkerStates, user.image!, true, "Moi"));

        return Scaffold(
          body: Stack(
            children: [
              MapboxMap(
                accessToken: accessToken,
                trackCameraPosition: true,
                onMapCreated: _onMapCreated,
                onMapLongClick: _onMapLongClickCallback,
                onCameraIdle: _onCameraIdleCallback,
                onStyleLoadedCallback: _onStyleLoadedCallback,
                initialCameraPosition: CameraPosition(target: coordinates, zoom: 14),
                styleString: MapboxStyles.OUTDOORS,
              ),
              IgnorePointer(
                ignoring: true,
                child: Stack(
                  children: _markers,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class Marker extends StatefulWidget {
  final Point _initialPosition;
  final LatLng _coordinate;
  final void Function(_MarkerState) _addMarkerState;
  final String _image;
  final bool _isMe;
  final String _fullname;

  Marker(String key, this._coordinate, this._initialPosition, this._addMarkerState, this._image, this._isMe, this._fullname,) : super(key: Key(key));

  @override
  State<StatefulWidget> createState() {
    final state = _MarkerState(_initialPosition, _image, _isMe, _fullname);
    _addMarkerState(state);
    return state;
  }
}

class _MarkerState extends State with TickerProviderStateMixin {
  final _iconSize = 45.0;

  Point _position;
  String _image;
  bool _isMe;
  String _fullname;

  _MarkerState(this._position, this._image, this._isMe, this._fullname);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var ratio = 1.0;

    //web does not support Platform._operatingSystem
    if (!kIsWeb) {
      // iOS returns logical pixel while Android returns screen pixel
      ratio = Platform.isIOS ? 1.0 : MediaQuery.of(context).devicePixelRatio;
    }

    return Positioned(
      left: _position.x / ratio - _iconSize / 2,
      top: _position.y / ratio - _iconSize / 2,
      child: Column(
        children: [
          Text(_fullname),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(_image, height: _iconSize),
          ),
        ],
      ),
    );
  }

  void updatePosition(Point<num> point) {
    setState(() {
      _position = point;
    });
  }

  LatLng getCoordinate() {
    return (widget as Marker)._coordinate;
  }
}
