import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.asset(
              'assets/images/rokna_logo.jpg', width: 100.0, height: 100.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: CircularProgressIndicator(
              backgroundColor: Colors.amber,
              strokeWidth: 1,
            ),
          )
        ],
      ),
    );
  }
}
