import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:sunflowerapp/screen/HomePage.dart';

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomePage(),
      title: new Text('Welcome to Sun Flower App'),
      image: new Image.asset('assets/tophead.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.yellow,
      loadingText: Text("loading...",
      style: GoogleFonts.lato(),),
    );
  }
}
