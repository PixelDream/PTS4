import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lottie/lottie.dart';
import 'package:socialnetwork/layout.dart';
import 'package:socialnetwork/src/authentification/signIn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => asyncCheckJWT());
    //Navigator.of(context).push( MaterialPageRoute(builder: (BuildContext context) => Profile()));
  }

  Future<void> asyncCheckJWT() async {
    const storage = FlutterSecureStorage();
    final isConnected = await storage.containsKey(key: "jwt");
    print("connected!!!" + isConnected.toString());
    String? jwt = await storage.read(key: "jwt");

    if (jwt != null) {
      print("jwtSocialNetwork" + jwt);
    }

    Timer(
      const Duration(seconds: 5), // 5s by default
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => _router(isConnected),
        ),
      ),
    );
  }

  Widget _router(bool isConnected) {
    if (isConnected) {
      return Layout();
    }

    return SignIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 51, 76, 1),
      body: Center(
        child: Lottie.asset("assets/lottie/background.json"),
      ),
    );
  }
}
