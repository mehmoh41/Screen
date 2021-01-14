import 'package:flutter/material.dart';
import 'package:page/seconScreen.dart';

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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primaryColor: Colors.indigo[800]),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Screen of the page',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Click the button to navigate to second screen',
                style: TextStyle(
                    color: Color(0xff4caf50),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          ),
          RaisedButton(
            child: Text('Navigate'),
            onPressed: () {
            
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          }),
        ],
      ),
    );
  }
}
