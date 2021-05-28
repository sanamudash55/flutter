import 'package:flutter/material.dart';
import 'package:storemanagement/screens/workerlist.dart';
import '../data/data.dart';

class AddWorker extends StatefulWidget {
  @override
  _AddWorkerState createState() => _AddWorkerState();
}

class _AddWorkerState extends State<AddWorker> {
  final _workerformkey = GlobalKey<FormState>();
  TextEditingController _name = new TextEditingController();
  TextEditingController _number = TextEditingController();
  void _validate() {
    if (_workerformkey.currentState.validate()) {
      setState(() {
        var name = _name.text;
        var number = _number.text;
        workers.add({"name": "$name", "number": "$number"});
        _name.text = _number.text = "";
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WorkerList()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Worker"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: _workerformkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        validator: (value) =>
                            value.length == 0 ? "This Field Is Required" : null,
                        controller: _name,
                        decoration: InputDecoration(
                            labelText: "Worker Name",
                            helperText: "Worker Name",
                            helperStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      TextFormField(
                        validator: (value) =>
                            value.length == 0 ? "This Field Is Required" : null,
                        keyboardType: TextInputType.number,
                        controller: _number,
                        decoration: InputDecoration(
                            labelText: "Worker Number",
                            helperText: "Worker Number",
                            helperStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _validate();
                        },
                        child: Text("Add Detail"),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
