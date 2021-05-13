import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About App"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Text(
                "This is the App where you can find the shortcuts key for the Microsoft word!",
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              // go back to the privious screen 
              Navigator.pop(context);
            },
            color: Colors.tealAccent,
            child: Text(
              "Go Back",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
