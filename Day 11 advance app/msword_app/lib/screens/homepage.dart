import 'package:flutter/material.dart';
import 'package:msword_app/screens/aboutpage.dart';
import '../data/data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                color: Colors.tealAccent,
                child: Center(
                    child: Text(
                  "Ms word Guide",
                  style: TextStyle(color: Colors.black, fontSize: 30.0),
                )),
              )),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AboutPage();
                  }));
                },
                leading: Icon(Icons.info_outline),
                title: Text("About"),
              ),
              ListTile(
                onTap: () {
                  launch(
                      "https://play.google.com/store/apps/details?id=com.tencent.ig&hl=en&gl=US");
                },
                leading: Icon(Icons.star),
                title: Text("Rate"),
              ),
              ListTile(
                onTap: () {
                  Share.share(
                      "hi , download this app form https://play.google.com/store/apps/details?id=com.tencent.ig&hl=en&gl=US");
                },
                leading: Icon(Icons.share),
                title: Text("Share"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.info),
                iconSize: 26.0,
                onPressed: () {
                  // this will change the screen

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AboutPage();
                  }));
                })
          ],
          title: Text("Ms Word Shortcuts"),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 2.0,
            );
          },
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 22.0,
                backgroundColor: Colors.tealAccent,
                child: Text(
                  "${index + 1}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              title: Text(data[index]["key"]),
              subtitle: Text(data[index]["use"]),
            );
          },
        ));
  }
}
