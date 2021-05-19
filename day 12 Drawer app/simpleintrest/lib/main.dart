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
      debugShowCheckedModeBanner: false,
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
  var principal = TextEditingController();
  var time = TextEditingController();
  var rate = TextEditingController();
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: ListView(
            children: [
              // Principal
              TextField(
                controller: principal,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    hintText: "Enter Principal"),
              ),
              SizedBox(
                height: 20.0,
              ),
              // Time
              TextField(
                keyboardType: TextInputType.number,
                controller: time,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    hintText: "Enter Time[years]"),
              ),
              SizedBox(
                height: 20.0,
              ),
              // Rate
              TextField(
                keyboardType: TextInputType.number,
                controller: rate,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    hintText: "Enter Rate"),
              ),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    var intrest = (int.parse(principal.text) *
                            double.parse(time.text) *
                            double.parse(rate.text)) /
                        100;
                    result = "the intrest is " + intrest.toString();
                    time.text = rate.text = principal.text = "";
                  });
                },
                child: Text("Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),),
              ),

              SizedBox(
                height: 30.0,
              ),
              Center(
                  child: Text(
                result,
                style: TextStyle(fontFamily: "cursive", fontSize: 20.0),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
