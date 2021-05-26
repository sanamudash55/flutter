import 'package:flutter/material.dart';
import '../data/data.dart';

class WorkerList extends StatefulWidget {
  @override
  _WorkerListState createState() => _WorkerListState();
}

class _WorkerListState extends State<WorkerList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Worker List"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                itemCount: workers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        print("Delete");
                      },
                    ),
                    leading: CircleAvatar(
                      radius: 25.0,
                      child: Text("${index+1}"),
                    ),
                    title: Text(
                      "${workers[index]['name']}",
                      style: TextStyle(color: Colors.blue),
                    ),
                    subtitle: Text("${workers[index]['number']}"),
                  );
                })));
  }
}
