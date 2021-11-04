import 'package:flutter/material.dart';

class RowAndColumnWork extends StatelessWidget {
  const RowAndColumnWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              color: Colors.indigo,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
          ],
        ),
        Wrap(
          direction: Axis.vertical,
          children: [
            Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.greenAccent,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
          ],
        )
      ],
    );
  }
}