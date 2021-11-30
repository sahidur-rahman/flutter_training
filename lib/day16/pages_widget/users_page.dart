import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.purple,
        child: Column(
            children: [
            Text('Users Page'),
        Image.network('https://images.pexels.com/photos/9785151/pexels-photo-9785151.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        ],
      ),
    ),);
  }
}
