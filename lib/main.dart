import 'package:flutter/material.dart';
import 'timer.dart';
import 'dart:async';

void main() {
  runApp(TimerApp());
}

class TimerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent,
        backgroundColor: Color(0xff151515),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          titleMedium: TextStyle(
            fontSize: 100.0,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
        ),
        iconTheme: IconThemeData(
          size: 28.0,
        ),
      ),
      home: CountdownTimer(),
    );
  }
}
