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
            color: Colors.indigo,
            constraints: BoxConstraints.expand(),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            alignment: Alignment.centerLeft,

            child: Text('Hello world', style: TextStyle(fontSize: 30),),
          ),
        ),
      ),
    );
  }
}
