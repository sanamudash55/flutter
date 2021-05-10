import 'package:flutter/material.dart';

void main() {
  // to start app we musc run the app
  runApp(ScoreApp());
}

// staless widget
// spevifing the app is statless or state full which can be get throug stl or stf
class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return type will specify what will return when rupApp start the app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title of the app
      title: "Score Changer",
      // ScoreHOme is statless widget
      home: ScoreHome(),
    );
  }
}
// state full widget creating abovve stateless widget

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text(
            "Score is ",
            style: TextStyle(
                color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
          )),
          Center(
            child: Text(
              number.toString(),
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 125,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: increaseNumber,
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: decreaseNumber,
              )
            ],
          ),
        ],
      ),
    );
  }
}
