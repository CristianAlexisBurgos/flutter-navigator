import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => new _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  bool isLogged = true;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        isLogged
            ? Navigator.pushReplacementNamed(context, '/main')
            : Navigator.pushReplacementNamed(context, '/auth');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Container(
      color: Colors.white,
      child: FlutterLogo(size: MediaQuery.of(context).size.height),
    );
  }
}
