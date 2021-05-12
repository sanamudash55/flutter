import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.cyan[600],
      ),
      debugShowCheckedModeBanner: false,
      home: calculator(),
    );
  }
}

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String op;
  bool seq;
  double first, second, result = 0;

  double sum(double a, double b) {
    return a + b;
  }

  double sub(double a, double b) {
    return a - b;
  }

// which will specify the order of oparand
  void specify(double x) {
    if (seq == null) {
      first = x;
      result = x;
    } else {
      second = x;
      result = x;
    }
  }

  void calcu(String op, double first, double second) {
    if (op == "add") {
      result = sum(first, second);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 20.0,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "$result",
                        style: TextStyle(fontSize: 40.0),
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "7",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {
                          setState(() {
                            specify(7);
                          });
                        }),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "8",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {
                          setState(() {
                            specify(8);
                          });
                        }),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "9",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {
                          setState(() {
                            op = "add";
                          });
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "4",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "5",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "6",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          ".",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "/",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {}),
                    RawMaterialButton(
                        elevation: 2.0,
                        fillColor: Colors.grey,
                        child: Text(
                          "=",
                          style: TextStyle(fontSize: 35.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        onPressed: () {
                          setState(() {
                            calcu(op, first, second);
                          });
                        }),
                  ],
                ),
              ),
              Row(
                children: [
                  RawMaterialButton(
                      elevation: 2.0,
                      fillColor: Colors.grey,
                      child: Text(
                        "AC",
                        style: TextStyle(fontSize: 35.0),
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                      onPressed: () {}),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
