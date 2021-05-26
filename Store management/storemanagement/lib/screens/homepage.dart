import 'package:flutter/material.dart';
import 'package:storemanagement/screens/addWorker.dart';
import 'package:storemanagement/screens/workerlist.dart';

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
                onTap: () {},
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
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Text("Sno"),
                    Text("Item name"),
                    Text("Amount"),
                    Text("Description"),
                    Text("Actions"),
                  ]),
                  TableRow(children: [
                    Text("1"),
                    Text("Hammer"),
                    Text("100"),
                    Text(
                        "The hammer is used to strick any thing to make rigid "),
                    Text("Delete"),
                  ]),
                  TableRow(children: [
                    Text("1"),
                    Text("Hammer"),
                    Text("100"),
                    Text(
                        "The hammer is used to strick any thing to make rigid "),
                    Text("Delete"),
                  ]),
                ],
              )
            ],
          ),
        ));
  }
}
