import 'package:flutter/material.dart';

void main() {
  runApp(
    Homepage(),
  );
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.edit), Icon(Icons.search)],
        centerTitle: true,
        title: Text("I am learinng flutter"),
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Icon(Icons.edit), Icon(Icons.search)],
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(40.0),
              color: Colors.green,
              width: 200.0,
              height: 200.0,
              child: Center(
                  child: Text(
                "I am child of container",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              )),
            ),

            Container(
              margin: EdgeInsets.only(top: 20.0),
              color: Colors.red,
              width: 200.0,
              height: 200.0,
              child: Center(
                  child: Text(
                "I am child of container",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
            ),

            RaisedButton(
              onPressed: () {
                print("i am clicked");
              },
              color: Colors.white,
              child: Text("click Me"),
            )
            //   Icon(Icons.access_alarm),
            //   Text("This is the Alaram"),
            //   Icon(Icons.play_arrow),
            //   Image(
            //     image: AssetImage("assets/logo.png"),
            //     height: 60.0,

            //   )
          ],
        ),
      ),
    ));
  }
}
