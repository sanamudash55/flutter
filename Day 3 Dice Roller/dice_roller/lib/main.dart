import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  void changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          //  image
          Center(
            child: Image.asset(
              "assets/$diceNumber.jpg",
              height: 250,
              width: 250,
            ),
          ),
          // button
          Center(
            child: MaterialButton(
              color: Colors.blue,
              onPressed: changeDice,
              child: Text(
                "Roll",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          SizedBox(
            height: 70,
          ),
          //text

          Center(
            child: Text(
              "#Udashsanam",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
