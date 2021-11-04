import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListWork extends StatelessWidget {
  const ListWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(color: Colors.green, height: 100, width: 20,),
                Container(color: Color.fromRGBO(255, 255, 0, 1), height: 100,),
                Container(color: Colors.lightBlue, height: 100,),
                Container(color: Colors.pinkAccent, height: 100,),
                Container(color: Colors.indigo, height: 100,),
                Container(color: Colors.greenAccent, height: 100,),
                Container(color: Colors.pink, height: 100,),
                Container(color: Colors.brown, height: 100,),
                Container(color: Colors.lightBlue, height: 100,),
                Container(color: Colors.green, height: 100,),
                Container(color: Colors.indigo, height: 100,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
