import 'dart:math';

import 'package:flutter/material.dart';

import 'model.dart';

class Cart extends StatefulWidget {
  final int index;

  const Cart({Key? key, required this.index}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool isTrue = false;

  List<Color> _colors = [
    Colors.green,
    Colors.blue,
    Colors.lime,
    Colors.indigoAccent,
    Colors.pink,
    Colors.yellow,
    Colors.purple,
  ];

  Random _random = Random();

  @override
  Widget build(BuildContext context) {
    int colorIndex = _random.nextInt(7);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onLongPress: () {},
        onTap: () {},
        child: ListTile(
          dense: true,
          leading: CircleAvatar(
            backgroundColor: _colors[colorIndex],
            child: Text('${widget.index + 1}'),
          ),
          title: Text(
            '${Model.taskList[widget.index].title}',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                decoration:
                    isTrue ? TextDecoration.lineThrough : TextDecoration.none),
          ),
          subtitle: Text(
              'date: ${Model.taskList[widget.index].date}, time: ${Model.taskList[widget.index].time}'),
          trailing: GestureDetector(
              onTap: () {
                setState(() {
                  isTrue = !isTrue;
                });
              },
              child: Icon(
                  isTrue ? Icons.check_box : Icons.check_box_outline_blank)),
        ),
      ),
    );
  }
}
