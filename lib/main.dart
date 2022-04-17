import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    challengeApp(),
  );
}

class challengeApp extends StatefulWidget {
  const challengeApp({Key key}) : super(key: key);

  @override
  State<challengeApp> createState() => _challengeAppState();
}

class _challengeAppState extends State<challengeApp> {
  int ball;

  void ballPace() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'AskMeAnything',
            style: TextStyle(
              color: Colors.blue[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white24,
        ),
        // backgroundColor: Colors.blue[100],
        body: Center(
          child: Expanded(
            child: TextButton(
              onPressed: () {
                ballPace();
              },
              child: Image.asset('images/ball$ball.png'),
            ),
          ),
        ),
      ),
    );
  }
}
