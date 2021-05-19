import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Intrest Calculatro',
      theme: ThemeData(
     
        primarySwatch: Colors.red,
      ),
      home: SimpleIntrest(),
    );
  }
}
class SimpleIntrest extends StatefulWidget {
  @override
  _SimpleIntrestState createState() => _SimpleIntrestState();
}

class _SimpleIntrestState extends State<SimpleIntrest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Simple Interest Calculator"),
      ),
    );
  }
}
