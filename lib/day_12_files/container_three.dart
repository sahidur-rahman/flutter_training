import 'package:flutter/material.dart';

class ContainerThree extends StatelessWidget {
  const ContainerThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'Sub page of Page Two ...',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
