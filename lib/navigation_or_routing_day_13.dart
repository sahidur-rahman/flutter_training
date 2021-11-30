import 'package:flutter/material.dart';
import 'package:flutter_training/day_12_files/home_page.dart';

class RoutingApp extends StatelessWidget {
  const RoutingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
