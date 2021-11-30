import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.green,
        child: Column(
            children: [
            Text('Profile Page'),
        Image.network('https://images.pexels.com/photos/10339349/pexels-photo-10339349.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        ],
      ),
    ),);
  }
}
