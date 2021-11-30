import 'package:flutter/material.dart';

import 'home.dart';

class BottomNavApp extends StatefulWidget {
  const BottomNavApp({Key? key}) : super(key: key);

  @override
  _BottomNavAppState createState() => _BottomNavAppState();
}

class _BottomNavAppState extends State<BottomNavApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
