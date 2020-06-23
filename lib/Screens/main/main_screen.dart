import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ro/Constants.dart';
import 'package:flutter_ro/Screens/main/components/MainCategoryCard.dart';
import 'package:flutter_ro/Screens/main/components/carousel_slider.dart';
import 'package:flutter_ro/components/search_box.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
