import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Sanam Udash"),
                accountEmail: Text("Udashsanam@gmail.com")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: GoogleFonts.lato(),
              ),
              subtitle: Text("goto home screen"),
              onTap: () {
                // routing to the home page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text("Report"),
              onTap: () {
                print("Reporet pressed");
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text("Users"),
              onTap: () {
                print("Users pressed");
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("hello world")),
    );
  }
}
