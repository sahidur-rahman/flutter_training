import 'package:flutter/material.dart';
import 'package:flutter_training/day_27/quize_app_home.dart';

class QuizeApp extends StatefulWidget {
  const QuizeApp({Key? key}) : super(key: key);

  @override
  _QuizeAppState createState() => _QuizeAppState();
}

class _QuizeAppState extends State<QuizeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizeAppHome(),
    );
  }
}
