import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: ButtonAppS()),
    );
  }
}

class ButtonAppS extends StatefulWidget {
  const ButtonAppS({Key? key}) : super(key: key);

  @override
  State<ButtonAppS> createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonAppS> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counter',
            style: TextStyle(fontSize: 50),
          ),
          MaterialButton(
            onPressed: () => setState(() {
              ++counter;
              print('$counter');
            }),
            onLongPress: () {},
            hoverColor: Colors.green,
            color: Colors.deepOrangeAccent,
            shape: const StadiumBorder(),
            textColor: Colors.white,
            child: Icon(Icons.add),
            splashColor: Colors.cyanAccent,
          ),
          TextButton.icon(
            icon: Icon(Icons.refresh),
            onPressed: () => setState(() {
              counter = 0;
            }),
            onLongPress: () {
              print('Button long pressed');
            },
            style: TextButton.styleFrom(
                primary: Colors.blueAccent,
                shape: StadiumBorder(),
                backgroundColor: Colors.purple,
                minimumSize: Size(90, 25),
            ),
            label: Text('Reset'),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.accessible)),
        ],
      ),
    );
  }
}
