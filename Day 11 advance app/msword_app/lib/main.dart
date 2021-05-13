import 'package:flutter/material.dart';
import 'package:msword_app/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ms Word Shortcut Guide',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

