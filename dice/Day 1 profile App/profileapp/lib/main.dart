import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "profile App",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile App'),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
              child: Image.network(
            "https://pbs.twimg.com/profile_images/794543867269787649/zDW_q11__400x400.jpg",
            height: 250,
            width: 250,
          )),
          SizedBox(height: 10),
          Text(
            "Name : Sanam Udash",
            style: TextStyle(
                fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text("Adddress: Kathmandu, Nepal",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text("Email : Udashsanam@gmail.com",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              )
              ),
              SizedBox(height: 90),
          Text("Devlop by : Sanam Udash", style: TextStyle(
            color: Colors.black,
          ),
          )
          
        ],
      ),
    ),
  ));
}
