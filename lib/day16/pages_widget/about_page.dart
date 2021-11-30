import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.pink,
        child: Column(
            children: [
            Text('About Page'),
        Image.network('https://images.pexels.com/photos/5941395/pexels-photo-5941395.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        ],
      ),
    ),);
  }
}
