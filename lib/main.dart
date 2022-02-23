import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'client.dart';
import 'splash_screen.dart';

void main() async {
  final client = await initClient();
  GetIt.I.registerLazySingleton<Client>(() => client);

  runApp(const MyApp());
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
