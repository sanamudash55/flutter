import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new LoginPage(),
        title: new Text('Welcome to Store Management Application'),
        image: new Image.asset('assets/splash.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.blue,
        loadingText: Text(
          "loading...",
        ),
      ),
    );
  }
}

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
      print(_usernamecontroller.text + " " + _passwordcontroller.text);
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
