import 'package:flutter/material.dart';
import 'package:flutter_training/day20/home.dart';

class BottomSheetView extends StatefulWidget {
  const BottomSheetView({Key? key}) : super(key: key);

  @override
  _BottomSheetViewState createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
