import 'package:flutter/material.dart';
import 'package:storemanagement/data/data.dart';
import 'package:storemanagement/screens/addWorker.dart';
import 'package:storemanagement/screens/additem.dart';
import 'package:storemanagement/screens/workerlist.dart';

import 'DetailPage.dart';

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
              ListTile(
                title: Text("Worker List"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WorkerList()));
                },
              ),
              ListTile(
                title: Text("Add Item"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddItem()));
                },
              ),
              ListTile(
                  title: Text("Add Worker"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddWorker()));
                  })
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 5.0, left: 0),
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(data: "${items[index]['name']}")));
                    },
                    trailing: ElevatedButton(
                      onPressed: () {
                        print("Goto UpdatePage");
                      },
                      child: Text("UPDATE"),
                    ),
                    leading: CircleAvatar(
                      radius: 25.30,
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(fontSize: 23.0),
                      ),
                    ),
                    title: Text("${items[index]['name']}"),
                  );
                })));
  }
}
