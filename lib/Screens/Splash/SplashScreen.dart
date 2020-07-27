import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ro/Screens/Splash/Components/Body.dart';
import 'package:flutter_ro/Screens/main/main_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  loadAppDataFromParseServer() async {


    }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => MainScreen()
    )
    );
  }

  initScreen(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Body()
    );
  }
}