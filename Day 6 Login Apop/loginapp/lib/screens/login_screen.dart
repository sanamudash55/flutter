import 'package:flutter/material.dart';
import 'package:loginapp/Screens/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  String username;
  String password;
  Widget build(BuildContext context) {
    final usernameFeild = TextField(
      onChanged: (value) {
        setState(() {
          username = value;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "username",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordFeild = TextField(
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        onPressed: () {
          if (username == "admin" && password == "admin") {
           
            // moving towarts ne screen in flutter

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            print("unsuccesfull");
          }
        },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.supervised_user_circle,
                  size: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                usernameFeild,
                SizedBox(
                  height: 10,
                ),
                passwordFeild,
                SizedBox(height: 20),
                myLoginButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
