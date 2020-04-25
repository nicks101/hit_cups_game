import 'package:clippy_flutter/clippy_flutter.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black26,
          ),
          Positioned(
            left: 60,
            child: Container(
              width: 290,
              height: 600,
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 30,
            left: 70,
            child: Container(
              width: 270,
              height: 40,
              child: ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text(
                  "10 SEC",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  "LEVEL 1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 150,
            child: Text(
              "3  SHOTS",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Trapezoid(
              cutLength: 60,
              edge: Edge.TOP,
              child: Container(
                color: Colors.grey,
                width: 410,
                height: 198,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
