import 'package:flutter/material.dart';

//Live class 4
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text'),
        ),
        backgroundColor: Colors.tealAccent,
        body: Center(
          child: Text(
              'Hello world',
              style: TextStyle(
                  fontSize: 25,
                  decoration: TextDecoration.combine([
                    TextDecoration.overline,
                    TextDecoration.underline,
                    TextDecoration.lineThrough,
                  ]),
                  decorationStyle: TextDecorationStyle.dotted
              )
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
