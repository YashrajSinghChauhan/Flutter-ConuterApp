flutter // ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      title: "Sample App",
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int numyo = 0;

  void datachange() {
    setState(() {
      numyo += 1;
    });
  }

  void datareset() {
    setState(() {
      numyo = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Counter is= $numyo",
                style: TextStyle(fontSize: 20.0),
              ),
              RaisedButton(
                onPressed: datachange,
                color: Colors.red,
                child: Text(
                  "Click me",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              RaisedButton(
                onPressed: datareset,
                color: Colors.blue,
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
