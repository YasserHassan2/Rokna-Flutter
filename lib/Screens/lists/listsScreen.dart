

import 'package:flutter/material.dart';

import '../../Constants.dart';
import 'components/Body.dart';

class ListsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Text('Products'),
      actions: <Widget>[
      ],
    );
  }
}

