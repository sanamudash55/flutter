import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Dialer App",
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = ["Sanam Udash", "Sunil Kunwar", "Susan Shresths"];
  var PhoneNumber = ["9865126175", "9810126463", "9818919817"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Dialer App"),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.supervised_user_circle),
            trailing: IconButton(
            icon: Icon(Icons.call),
            onPressed: (){},
            ),
            title:Text(contactList[index]),
            subtitle: Text(PhoneNumber[index]),
          );
        },
      ),
    );
  }
}
