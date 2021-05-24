import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;
  final String email;
  // creating a constructor of th HomePage widget to get data for this whic are username and email
  HomePage({Key key, @required this.email, @required this.username})
      : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.report),
            onPressed: () {
              print("Report");
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                // to access the variable we must use widget which is passed through the contructor
                accountName: Text(widget.username),
                accountEmail: Text(widget.email)),
          ],
        ),
      ),
    );
  }
}
