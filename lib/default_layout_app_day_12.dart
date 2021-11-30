import 'package:flutter/material.dart';

class DefaultLayoutApp extends StatelessWidget {
  const DefaultLayoutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeWidget());
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Home'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button:'),
            Text(
              '$counter',
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onLongPress: () => setState(() {
          counter = 0;
        }),
        child: FloatingActionButton(
          onPressed: () => setState(() {
            counter++;
          }),
         /* child: Tooltip(
            message: 'Long press to reset!',
            child: Icon(Icons.add),
          ),*/
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
