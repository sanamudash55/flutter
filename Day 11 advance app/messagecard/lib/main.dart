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
      home: Scaffold(
        appBar: AppBar(
          
          title: Text("Message Card App"),
          
          ),
          body: Center(
            
            child: TextField(
              maxLength: 30,
              keyboardType: TextInputType.text,
              obscureText: true,
              autofocus: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.edit),
                labelText: "write your message",
                hintText: "Your text here",
                helperText: "You can write message here",
                border: OutlineInputBorder()
              ),
            ),
            
            ),

      ),
    );
  }
}
