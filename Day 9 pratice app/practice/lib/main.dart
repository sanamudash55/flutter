import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Practice",
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int display = 0;
  int a, b;
  String op;
  void decrease() {
    display--;
  }

  void num7() {
    display = 7;
    a = 989999999999999;
  }

  void num8() {
    display = 8;
    b = 1;
  }

  int sum(int a, int b) {
    return a + b;
  }

  void operation() {
    if (op == "add") {
      display = sum(a, b);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "practice",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Practice app"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
                color: Colors.red,
                elevation: 20.0,
                child: Row(
                  children: [Text("$display")],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        num7();
                      });
                    },
                    child: Text("7"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        num8();
                      });
                    },
                    child: Text("8"),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    op = "add";
                  },
                  child: Text("+"),
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  operation();
                });
              },
              child: Icon(Icons.equalizer),
            )
          ],
        ),
      ),
    );
  }
}
