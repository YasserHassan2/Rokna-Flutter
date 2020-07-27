import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ro/Screens/Splash/Components/Body.dart';
import 'package:flutter_ro/Screens/main/main_screen.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../../Constants.dart';

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
    //startTimer();
    loadAppDataFromParseServer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  Future<void> loadAppDataFromParseServer() async {
    await Parse().initialize(
        keyApplicationId,
        keyParseServerUrl,clientKey: keyClientKey);

    var ApplicationINFO = await ParseObject('promo_codes').getAll();

    var ProductsApiResponse = await ParseObject('products').getAll();

    var AdvApiResponse = await ParseObject('Ads_Banners').getAll();

    var WorkshopsApiResponse = await ParseObject('workshops').getAll();

    var EventsApiResponse = await ParseObject('events').getAll();

    var CategoryapiResponse = await ParseObject('category').getAll();

    if (CategoryapiResponse.success){
      for (var testObject in CategoryapiResponse.result) {
        print('Rokna App' + ": " + testObject.toString());
      }
    }
    if (ApplicationINFO.success){
      for (var testObject in ApplicationINFO.result) {
        print('Rokna App' + ": " + testObject.toString());
      }
    }
    if (ProductsApiResponse.success){
      for (var testObject in ProductsApiResponse.result) {
        print('Rokna App' + ": " + testObject.toString());
      }
    }
    if (AdvApiResponse.success){
      for (var testObject in AdvApiResponse.result) {
        print('Rokna App' + ": " + testObject.toString());
      }
    }
    if (WorkshopsApiResponse.success){
      for (var testObject in WorkshopsApiResponse.result) {
        print('Rokna App' + ": " + testObject.toString());
      }
    }
    if (EventsApiResponse.success){
      for (var testObject in EventsApiResponse.result) {
        print('Rokna App' + ": " + testObject.toString());
      }
    }

    print('done');
    route();

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