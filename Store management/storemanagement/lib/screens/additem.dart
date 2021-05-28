import 'package:flutter/material.dart';
import 'package:storemanagement/data/data.dart';

import 'homepage.dart';

class AddItem extends StatefulWidget {
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  TextEditingController _itemname = new TextEditingController();
  TextEditingController _amount = new TextEditingController();
  TextEditingController _description = new TextEditingController();
  final _itemformkey = GlobalKey<FormState>();

  void _validated() {
    if (_itemformkey.currentState.validate()) {
      var name = _itemname.text;
      var amount = _amount.text;
      var description = _description.text;
      items.add({
        "name": "$name",
        "amoutn": "$amount",
        "description": "$description"
      });
      _itemname.text = _amount.text = _description.text = "";
      Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage(email:"udashsanam@gmail.com",username: "Admin",)));
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Form(
                key: _itemformkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _itemname,
                      validator: (value) =>
                          value.length == 0 ? "This Field is Required" : null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          labelText: "Item Name",
                          helperText: "Item Name",
                          helperStyle: TextStyle(fontSize: 20.0)),
                    ),
                    TextFormField(
                      controller: _amount,
                      validator: (value) =>
                          value.length == 0 ? "This Field is Required" : null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          labelText: "Item Amount",
                          helperText: "Item Amount",
                          helperStyle: TextStyle(fontSize: 20.0)),
                    ),
                    TextFormField(
                      controller: _description,
                      validator: (value) =>
                          value.length == 0 ? "This Field is Required" : null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          labelText: "Item Description",
                          helperText: "Item Description",
                          helperStyle: TextStyle(fontSize: 20.0)),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _validated();
                        },
                        child: Text("Add item"))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
