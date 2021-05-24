

import 'package:curd/model/Contact.dart';
import 'package:curd/utils/database_helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Sqlite Curd",
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // for the controling the form
  final _formkey = GlobalKey<FormState>();
  // for the input of the field
  Contact _contact = Contact();
  // fot the list of the contact added by the user
  List<Contact> _contacts = [];
  DatabaseHelper _dbhelper = DatabaseHelper.instance;
  @override
  void initState() {
    super.initState();
    setState(() {
      _dbhelper = DatabaseHelper.instance;
    });
    _refreshContactList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqlite Curd"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [_form(), _list()],
        ),
      ),
    );
  }

  _form() => Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                // this will call the functin when the value of thid form field is saved
                onSaved: (val) {
                  setState(() {
                    _contact.name = val;
                  });
                },
                validator: (value) =>
                    (value.length == 0 ? 'this field is requirred' : null),
                decoration: InputDecoration(labelText: "Full Name"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Mobile"),
                onSaved: (newValue) {
                  setState(() {
                    _contact.number = newValue;
                  });
                },
                validator: (value) =>
                    (value.length == 0 ? 'this field is requirred' : null),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Colors.black87,
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _onsubmit();
                  },
                ),
              )
            ],
          ),
        ),
      );

  _refreshContactList() async {
  List<Contact> x = await _dbhelper.fetchContact();
    setState(() {
      _contacts = x;
    });
  }

  _onsubmit() async {
    var form = _formkey.currentState;
    if (form.validate()) {
      /*here save isthe call back function which will call the onsaved function
      this funtion will save the value of the current inputed in the form field */
      form.save();
      await _dbhelper.insertContact(_contact);
      // this will add the inputed contact detail in the list _contacts
      _refreshContactList();
      form.reset();
    }
  }

  _list() => Expanded(
        child: Card(
          margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: _contacts.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                        leading: Icon(
                          Icons.account_circle,
                          size: 40.0,
                        ),
                        title: Text(_contacts[index].name.toUpperCase()),
                        subtitle: Text(
                          _contacts[index].number,
                        )),
                    Divider(
                      height: 5.0,
                    )
                  ],
                );
              }),
        ),
      );
}
