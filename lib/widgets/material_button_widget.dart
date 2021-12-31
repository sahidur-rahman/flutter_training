import 'package:flutter/material.dart';

class MeterialButtonWidget extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MeterialButtonWidget(
      {Key? key, required this.title, required this.notifyRoot})
      : super(key: key);
  final String title;
  VoidCallback notifyRoot;

  @override
  State<MeterialButtonWidget> createState() => _MeterialButtonWidgetState();
}

class _MeterialButtonWidgetState extends State<MeterialButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        widget.notifyRoot();
      },
      child: Text(widget.title),
      color: Colors.blueAccent,
      shape: const StadiumBorder(),
    );
  }
}
