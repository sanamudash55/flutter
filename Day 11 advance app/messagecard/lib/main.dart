import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Message Card App',
        theme: ThemeData(primarySwatch: Colors.red),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = "Container widget is here";
  Color themecolor = Colors.red;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themecolor,
          title: Text("Message Card App"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                    child: Text(
                  message,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "cursive"),
                )),
                width: 400.0,
                height: 250.0,
                color: themecolor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                maxLength: 30,
                onChanged: (String newValue) {
                  setState(() {
                    message = newValue;
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: themecolor, width: 2.0)),
                    hintText: "Your message",
                    helperText: "You can write message here",
                    prefixIcon: Icon(
                      Icons.edit,
                      color: themecolor,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: themecolor,
                onPressed: () {
                  setState(() {
                    controller.clear();
                  });
                },
                child: Text(
                  "Clear the Text",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          themecolor = Colors.blue;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themecolor = Colors.red;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themecolor = Colors.green;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          themecolor = Colors.orange;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
