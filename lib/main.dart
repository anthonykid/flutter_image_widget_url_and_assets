import 'package:flutter/material.dart';

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
      home: FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
          title: Text('First Screen'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  //Container Color
                  child: Image.network(
                "https://flutter.dev/images/flutter-logo-sharing.png",
                width: 200,
                height: 200,
              )),
              Container(
                //Container Shape
                child: Image.asset('images/Anthonykid.png',
                    width: 200, height: 200),
              ),
              Padding(
                  padding: EdgeInsets.all(30),
                  child: Text('This Is How To Import , the top is from url, and below its from assets')), //this is how to use padding
              // Center(
              //   child: Text('Text berada di tengah'),
              // ),
            ],
          ),
        ));
  }
}
