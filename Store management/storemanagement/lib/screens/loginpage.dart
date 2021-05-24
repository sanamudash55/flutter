import 'package:flutter/material.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
// for controller the field of username
  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  // for controlling the field of the form
  final _formkey = GlobalKey<FormState>();

  void _validation() {
    var form = _formkey.currentState;
    if (form.validate()) {
      if (_usernamecontroller.text == "Admin" &&
          _passwordcontroller.text == "admin") {
        final String username = _usernamecontroller.text;
        final String email = "Udashsanam@gmail.com";
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage(email:email,username: username,)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _usernamecontroller,
                  decoration: InputDecoration(
                      helperText: "Password",
                      helperStyle: TextStyle(fontSize: 20.0),
                      labelText: "Enter your Password",
                      hintText: 'Password',
                      border: OutlineInputBorder()),
                  validator: (value) =>
                      (value.length == 0 ? 'this field is requirred' : null),
                ),
                TextFormField(
                  obscureText: true,
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                      helperText: "Password",
                      helperStyle: TextStyle(fontSize: 20.0),
                      labelText: "Enter your Password",
                      hintText: 'Password',
                      border: OutlineInputBorder()),
                  validator: (value) =>
                      (value.length == 0 ? 'this field is requirred' : null),
                ),
                RaisedButton(
                  color: Colors.green,
                  onPressed: _validation,
                  child: Text("login"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: () {
                    print("presed");
                  },
                  child: Text("Register"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
