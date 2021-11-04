import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;


class ColorWork extends StatelessWidget {
  const ColorWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Home Page',),
          elevation: 20,
          toolbarHeight: 80,
         // leading: Icon(Icons.account_balance_outlined),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            IconButton(onPressed: (){}, icon: Icon(Icons.call)),
            IconButton(onPressed: (){}, icon: Icon(Icons.account_box_outlined))
          ],
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: [
              Container(
                height: 80.0,
                child: DrawerHeader(
                    child: Text('Drawer Heading', style: TextStyle(color: Colors.white)),
                    decoration: BoxDecoration(
                        color: Colors.indigo
                    ),
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(15)
                  ),
              ),

            ],
          ),
        ),

        backgroundColor: Colors.green,
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(),
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.bottomLeft,
                  stops: [
                    0.2, 0.6, 0.8, 1
                  ],
                  colors: [
                    Colors.greenAccent,
                    Colors.blue,
                    Colors.yellow,
                    Colors.pink
                  ]
                )
              ),
            )
          ),
        ),

      ),
    );
  }
}
