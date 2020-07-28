import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ro/Database/Database_Helper.dart';
import 'package:flutter_ro/Screens/Splash/Components/Body.dart';
import 'package:flutter_ro/Screens/main/main_screen.dart';
import 'package:flutter_ro/model/Adv.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

import '../../Constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  var dbHelper;
  var isUpdating;


  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }


  @override
  void initState() {
    super.initState();
    dbHelper = DBHelper();
    isUpdating = false;
   // startTimer();
   loadAppDataFromParseServer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

   loadAppDataFromParseServer() async {
    await Parse().initialize(
        keyApplicationId,
        keyParseServerUrl,clientKey: keyClientKey);

 //   var ApplicationINFO = await ParseObject('promo_codes').getAll();

 //   var ProductsApiResponse = await ParseObject('products').getAll();

    var AdvApiResponse = await ParseObject('Ads_Banners').getAll();

  //  var WorkshopsApiResponse = await ParseObject('workshops').getAll();

   // var EventsApiResponse = await ParseObject('events').getAll();

 //   var CategoryapiResponse = await ParseObject('category').getAll();

//    if (CategoryapiResponse.success){
//      for (var testObject in CategoryapiResponse.result) {
//        print('Rokna App' + ": " + testObject.toString());
//      }
//    }
//    if (ApplicationINFO.success){
//      for (var testObject in ApplicationINFO.result) {
//        print('Rokna App' + ": " + testObject.toString());
//      }
//    }
//    if (ProductsApiResponse.success){
//      for (var testObject in ProductsApiResponse.result) {
//        print('Rokna App' + ": " + testObject.toString());
//      }
//    }
    if (AdvApiResponse.success){
      for (var adv in AdvApiResponse.result) {
        dbHelper.save(convertParseObjectToAdv(adv));
        print('Rokna App' + ": " + adv.toString());
      }
    }
//    if (WorkshopsApiResponse.success){
//      for (var testObject in WorkshopsApiResponse.result) {
//        print('Rokna App' + ": " + testObject.toString());
//      }
//    }
//    if (EventsApiResponse.success){
//      for (var testObject in EventsApiResponse.result) {
//        print('Rokna App' + ": " + testObject.toString());
//      }
//    }

    print('done');
    route();

    }

  static Adv convertParseObjectToAdv(ParseObject object) {
    var adv = Adv();
    adv.parseServerID = object.get<String>('objectId');
    adv.ad_snippet = object.get<String>('ad_snippet');
    adv.ad_url = object.get<String>('ad_url');
    adv.ad_img = 'sss';
    return adv;
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