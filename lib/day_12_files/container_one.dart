import 'package:flutter/material.dart';

class ContainerOne extends StatefulWidget {
  const ContainerOne({Key? key}) : super(key: key);

  @override
  State<ContainerOne> createState() => _ContainerOneState();
}

class _ContainerOneState extends State<ContainerOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
            'Page One',
            style: TextStyle(fontSize: 30),
          )),
    );
  }
}