import 'package:background_fetch/background_fetch.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/src/utils/AudioManager.dart';
import 'package:socialnetwork/src/utils/ClientManager.dart';
import 'package:socialnetwork/src/utils/FileManager.dart';
import 'package:socialnetwork/src/utils/LocationManager.dart';
import 'package:socialnetwork/src/utils/SaveData.dart';
import 'package:socialnetwork/src/utils/SpotifyManager.dart';

import 'splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Change position in builder during splashscreen
  final FlutterSecureStorage storage = FlutterSecureStorage();
  SaveData().setId(await storage.read(key: "id"));

  final client = await initClient();
  GetIt.I.registerLazySingleton<Client>(() => client);
  GetIt.I.registerSingleton<FileManager>(FileManager(), signalsReady: true);
  GetIt.I.registerSingleton<SpotifyManager>(SpotifyManager(), signalsReady: true);
  GetIt.I.registerSingleton<AudioManager>(AudioManager(), signalsReady: true);
  GetIt.I.registerSingleton<LocationManager>(LocationManager(), signalsReady: false);

  runApp(const MyApp());
  BackgroundFetch.registerHeadlessTask(LocationManager.backgroundFetchHeadlessTask);
  LocationManager.initPlatformState();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: 'Network',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Inter'),
      home: const SplashScreen(),
    );
  }
}
