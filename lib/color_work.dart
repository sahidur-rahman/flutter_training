import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_training/drawer_work.dart';
import 'package:flutter_training/row_and_column_work.dart';

class ColorWork extends StatelessWidget {
  const ColorWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Home Page',
          ),
          elevation: 20,
          toolbarHeight: 80,
          // leading: Icon(Icons.account_balance_outlined),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_box_outlined))
          ],
        ),
        drawer: DrawerWork(),
        backgroundColor: Colors.green,
        body: Center(
            child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              gradient: RadialGradient(center: Alignment.bottomLeft, stops: [
            0.2,
            0.6,
            0.8,
            1
          ], colors: [
            Colors.greenAccent,
            Colors.blue,
            Colors.yellow,
            Colors.grey
          ])),
          child: RowAndColumnWork(),
        )),
      ),
    );
  }
}
