import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY Cv App",
      debugShowCheckedModeBanner: false,
      // for theme of the app
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("MY CV APP"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30.0,
                      horizontal: 20.0,
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(20)),
                        CircleAvatar(
                          radius: 60.0,
                          backgroundImage: AssetImage("assets/sanam.jpg"),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Name : Sanam Udsh",
                          style:
                              TextStyle(fontFamily: "cursive", fontSize: 20.0),
                        ),
                        Text(
                          "Flutter learner",
                          style: TextStyle(
                              fontFamily: "cursive",
                              fontSize: 15.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Bio: Hello I am Sanam Udash. I Study Csit in Nepal. I am from Matatritha.",
                          style:
                              TextStyle(fontFamily: "NotoSans", fontSize: 17.0),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Social Links:",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          color: Colors.blue,
                          icon: Icon(FontAwesomeIcons.facebook),
                          onPressed: () {
                            launch("https://www.facebook.com/sanam.udash");
                          },
                        ),
                        IconButton(
                            color: Colors.blue,
                            icon: Icon(FontAwesomeIcons.twitter),
                            onPressed: () {
                              launch("https://twitter.com/udashsanam?lang=en");
                            }),
                        IconButton(
                            icon: Icon(FontAwesomeIcons.instagram),
                            onPressed: () {
                              launch(
                                  "https://www.instagram.com/udash.sanam/?hl=en");
                            }),
                        IconButton(
                            color: Colors.blue,
                            icon: Icon(FontAwesomeIcons.linkedin),
                            onPressed: () {
                              launch(
                                  "https://www.linkedin.com/in/sanam-udash-99b125178/");
                            }),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Skills:",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://marketinginnepal.com/wp-content/uploads/2020/12/1_pE2fOVDikEUwiQJlh4ggzg-1024x538.jpeg"),
                    ),
                    title: Text("Web Development"),
                    subtitle: Text("HTML,CSS,JavaScript,PHP"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://5.imimg.com/data5/IP/QF/MY-9426320/mobile-application-development-500x500.jpg"),
                    ),
                    title: Text("App Development"),
                    subtitle: Text("Dart,Flutter"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://blog.amplexor.com/hubfs/social-suggested-images/o365-logo.png"),
                    ),
                    title: Text("Office package"),
                    subtitle: Text("Words,Excel,Powerpoint"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
