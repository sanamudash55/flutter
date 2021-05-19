import 'package:flutter/material.dart';
import 'package:sunflowerapp/screen/MySplashScreen.dart';

void main() {
  runApp(MaterialApp(
    title: "sun flower app",
    debugShowCheckedModeBanner: false,
    home: MySplashScreen(),
    theme: ThemeData(
      primaryColor: Colors.yellow,
      primarySwatch: Colors.yellow
    ),
  ));
}
