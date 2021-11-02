import 'package:flutter/material.dart';

//Live class 5
class ContainerApp extends StatelessWidget {
  const ContainerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            transform: Matrix4.rotationY(1),
            constraints: BoxConstraints(
              maxWidth: 200,
              maxHeight: 300
            ),
            decoration: BoxDecoration(
              color: Colors.indigo,
              shape: BoxShape.rectangle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lightBlue,
                  Colors.yellow,
                  Colors.green
                ]
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.elliptical(20, 50)),
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 10,
                  spreadRadius: 20,
                  offset: Offset(4, 4)
                )
              ]
            ),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            alignment: Alignment.centerLeft,
            child: Text('Hello world', style: TextStyle(fontSize: 30),),
          ),
        ),
      ),
    );
  }
}
