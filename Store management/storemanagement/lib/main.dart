import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:storemanagement/screens/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store Keeper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new LoginPage(),
        title: new Text('Welcome to Store Keeper'),
        image: new Image.asset('assets/splash.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 150.0,
        loaderColor: Colors.blue,
        loadingText: Text(
          "loading...",
        ),
      ),
    );
  }
}
