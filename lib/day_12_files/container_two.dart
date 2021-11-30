import 'package:flutter/material.dart';
import 'package:flutter_training/day_12_files/container_three.dart';

class ContainerTwo extends StatefulWidget {
  const ContainerTwo({Key? key}) : super(key: key);

  @override
  State<ContainerTwo> createState() => _ContainerTwoState();
}

class _ContainerTwoState extends State<ContainerTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          Text(
            'Page Two Widgets will goes here...',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
              color: Colors.pink,
              height: 50,
              minWidth: 100,
              child: Text('Sub Page'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContainerThree()));
              })
        ],
      )),
    );
  }
}
