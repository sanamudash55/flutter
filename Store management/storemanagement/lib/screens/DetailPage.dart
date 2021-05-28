import 'package:flutter/material.dart';
import '../data/data.dart';

class DetailPage extends StatefulWidget {
  final String data;
  Map<dynamic, dynamic> result;

  DetailPage({Key key, @required this.data}) : super(key: key) {
    // searching the data into the list
    this.result = items.singleWhere((element) => element["name"] == data);
  }
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items Detail"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text("Name"),
                  subtitle: Text(widget.result['name']),
                ),
                  ListTile(
                  title: Text("Amount"),
                  subtitle: Text(widget.result['amount']),
                ),
                  ListTile(
                  title: Text("Description"),
                  subtitle: Text(widget.result['description']),
                )
              ],
            );
          }),
    );
  }
}
