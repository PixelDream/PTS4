import 'package:background_fetch/background_fetch.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:location/location.dart';
import 'package:socialnetwork/graphql/update_location.req.gql.dart';

class LocationManager {
  //TODO: MACOS https://github.com/transistorsoft/flutter_background_fetch/blob/master/help/INSTALL-IOS.md

  LocationManager() {
    initPlatformState();
    BackgroundFetch.start().then((int status) {
      print('[BackgroundFetch] start success: $status');
    }).catchError((e) {
      print('[BackgroundFetch] start FAILURE: $e');
    });
  }

// [Android-only] This "Headless Task" is run when the Android app
// is terminated with enableHeadless: true
  static void backgroundFetchHeadlessTask(HeadlessTask task) async {
    String taskId = task.taskId;
    bool isTimeout = task.timeout;
    if (isTimeout) {
      // This task has exceeded its allowed running-time.
      // You must stop what you're doing and immediately .finish(taskId)
      print("[BackgroundFetch] Headless task timed-out: $taskId");
      BackgroundFetch.finish(taskId);
      return;
    }
    print('[BackgroundFetch] Headless event received.');
    // Do your work here...
    BackgroundFetch.finish(taskId);
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  static Future<void> initPlatformState() async {
    // Configure BackgroundFetch.
    int status = await BackgroundFetch.configure(
        BackgroundFetchConfig(
            minimumFetchInterval: 5,
            stopOnTerminate: false,
            enableHeadless: true,
            requiresBatteryNotLow: false,
            requiresCharging: false,
            requiresStorageNotLow: false,
            requiresDeviceIdle: false,
            startOnBoot: true,
            forceAlarmManager: true,
            requiredNetworkType: NetworkType.NONE), (String taskId) async {
      // <-- Event handler
      // This is the fetch-event callback.
      print("[BackgroundFetch] Event received $taskId");

      final FlutterSecureStorage storage = FlutterSecureStorage();
      final Client client = GetIt.I<Client>();

      String? id = await storage.read(key: "id");

      if (id == null) return;

      LocationData _locationData = await getCurrentLocation();

      final updateLocationReq = GUpdateLocationReq((b) {
        b.vars.user.id = id;
        b.vars.location.location.latitude = _locationData.latitude;
        b.vars.location.location.longitude = _locationData.longitude;
      });

      var result = await client.request(updateLocationReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);

      print("[LocationManager]  ==> $result");

      // IMPORTANT:  You must signal completion of your task or the OS can punish your app
      // for taking too long in the background.
      BackgroundFetch.finish(taskId);
    }, (String taskId) async {
      // <-- Task timeout handler.
      // This task has exceeded its allowed running-time.  You must stop what you're doing and immediately .finish(taskId)
      print("[BackgroundFetch] TASK TIMEOUT taskId: $taskId");
      BackgroundFetch.finish(taskId);
    });
    print('[BackgroundFetch] configure success: $status');
  }

  static Future<LocationData> getCurrentLocation() async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        throw Exception("Error");
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        throw Exception("Error");
      }
    }

    print("[LocationManager]  ==> permission OK");

    _locationData = await location.getLocation();
    print("[LocationManager]  ==> getting");

    return _locationData;
  }
}
