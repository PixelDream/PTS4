import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

const randomMarkerNum = 10;

const accessToken = "sk.eyJ1IjoieWFubmFybzM1IiwiYSI6ImNrejF1OHk0ejFoOTcycHFrYml1OTd2NG0ifQ.66HA_DbciPhDVdJSo6LrFQ";

class CustomMarker extends StatefulWidget {
  const CustomMarker({Key? key}) : super(key: key);

  @override
  State createState() => CustomMarkerState();
}

class CustomMarkerState extends State<CustomMarker> {
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

    _mapController.toScreenLocationBatch(param).then((value) {
      for (var i = 0; i < randomMarkerNum + 1; i++) {
        var point = Point<double>(value[i].x as double, value[i].y as double);
        _addMarker(point, param[i]);
      }
    });

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
    _addMarker(point, coordinates);
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

  void _addMarker(Point<double> point, LatLng coordinates) {
    setState(() {
      _markers.add(Marker(_rnd.nextInt(100000).toString(), coordinates, point, _addMarkerStates));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      MapboxMap(
        accessToken: accessToken,
        trackCameraPosition: true,
        onMapCreated: _onMapCreated,
        onMapLongClick: _onMapLongClickCallback,
        onCameraIdle: _onCameraIdleCallback,
        onStyleLoadedCallback: _onStyleLoadedCallback,
        initialCameraPosition: const CameraPosition(target: LatLng(35.0, 135.0), zoom: 15),
        styleString: MapboxStyles.OUTDOORS,
      ),
      IgnorePointer(
          ignoring: true,
          child: Stack(
            children: _markers,
          ))
    ]));
  }
}

class Marker extends StatefulWidget {
  final Point _initialPosition;
  final LatLng _coordinate;
  final void Function(_MarkerState) _addMarkerState;

  Marker(String key, this._coordinate, this._initialPosition, this._addMarkerState) : super(key: Key(key));

  @override
  State<StatefulWidget> createState() {
    final state = _MarkerState(_initialPosition);
    _addMarkerState(state);
    return state;
  }
}

class _MarkerState extends State with TickerProviderStateMixin {
  final _iconSize = 45.0;

  Point _position;

  _MarkerState(this._position);

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
        child: ClipRRect(borderRadius: BorderRadius.circular(50.0), child: Image.asset('assets/images/user.jpg', height: _iconSize)));
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
