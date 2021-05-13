import 'package:flutter/material.dart';
import 'package:msword_app/screens/aboutpage.dart';
import '../data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
