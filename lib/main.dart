import 'package:flutter/material.dart';
import 'package:flutter_ro/Screens/Splash/SplashScreen.dart';
import 'package:flutter_ro/Screens/main/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Constants.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of  your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // We set Poppins as our default font
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
