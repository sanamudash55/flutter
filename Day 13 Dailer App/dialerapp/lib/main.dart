import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  var phoneNumber = ["9865126175", "9810126463", "9818919817"];
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
            leading: CircleAvatar(
              radius: 25.0,
              child: Text("${index + 1}"),
            ),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                launch("tel://${phoneNumber[index]}");
              },
            ),
            title: Text(contactList[index]),
            subtitle: Text(phoneNumber[index]),
          );
        },
      ),
    );
  }
}
