import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  @override
  _calculatorState createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var _operation = ['Add', 'Subtraction', 'Multiply', 'Divide'];
  var _values = "Add";
  var _displaytext = "";
  TextEditingController textbox1 = TextEditingController();
  TextEditingController textbox2 = TextEditingController();
  void _clearAll() {
    textbox1.text = "";
    textbox2.text = "";
  }

  void _calulateResult(value) {}

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            DropdownButton<String>(
              value: _values,
              style: textStyle,
              items: _operation.map((String values) {
                return DropdownMenuItem<String>(
                  value: values,
                  child: Text(values),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _values = value;
                  print(value);
                });
              },
            ),
            // second item
            TextField(
              controller: textbox1,
              style: textStyle,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "100",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0))),
            ),
            SizedBox(
              height: 20.0,
            ),
            // third item
            TextField(
              controller: textbox2,
              style: textStyle,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Second number",
                  hintText: "100",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0))),
            ),
            //fourth item
            Text(
              _displaytext,
              style: textStyle,
            ),
            //fifth item
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        double first = double.parse(textbox1.text);
                        double second = double.parse(textbox2.text);
                        switch (_values) {
                          case 'Add':
                            var sum = first + second;
                            _displaytext = "the sum is " + sum.toString();
                            break;
                          case 'Multiply':
                            var mul = first * second;
                            _displaytext = "the sum is " + mul.toString();
                            break;
                          case 'Subtraction':
                            var diff = first - second;
                            _displaytext =
                                "the subraction  is " + diff.toString();
                            break;
                          case 'Divide':
                            var div = first / second;
                            _displaytext = "the sum is " + div.toString();
                            break;
                          default:
                            _displaytext = "somthing wrong";
                        }
                      });
                    },
                    child: Text("Calculate"),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _clearAll();
                      });
                    },
                    child: Text("Clear"),
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
