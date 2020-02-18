import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color _backgroundColor = _getRandomColor();

  static Color _getRandomColor() {
    Random random = new Random();
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

  void _setRandomColor() {
    setState(() {
      _backgroundColor = _getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: _backgroundColor,
      body: InkWell(
        onTap: _setRandomColor,
        child: Center(
          child: Text(
            'Hey there',
            style: Theme.of(context).textTheme.display1,
          ),
        ),
      ),
    );
  }
}
