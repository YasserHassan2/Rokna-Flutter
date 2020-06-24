import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ro/Constants.dart';

import 'package:flutter_ro/Screens/main/components/carousel_slider.dart';

import 'package:parse_server_sdk/parse_server_sdk.dart';

class MainScreen extends StatelessWidget {

  Future<void> ParseServerData() async {

    await Parse().initialize(
        keyApplicationId,
        keyParseServerUrl,clientKey: keyClientKey);

    var dietPlan = ParseObject('DietPlan')
      ..set('Name', 'Ketogenic')
      ..set('Fat', 65);
    await dietPlan.save();

    print('done');
  }



  @override
  Widget build(BuildContext context) {

    ParseServerData();
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      title: Text('Rokna'.toUpperCase(),
          style: Theme.of(context).textTheme.headline6),
    ),
      body:SafeArea(
        bottom: false,
        child:CarouselDemo()
      ),

      );
  }
}
