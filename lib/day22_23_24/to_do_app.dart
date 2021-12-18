import 'package:flutter/material.dart';
import 'package:flutter_training/day22_23_24/to_app_home.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo application',
      home: ToDoAppHome(),
    );
  }
}
