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
        color: Colors.purple,
        child: Column(
          children: [
            Text('Profile Page'),
            Image.network('https://cdn.dribbble.com/users/4551506/screenshots/14857095/media/4a80e550a5669b342ab59907e047133f.png?compress=1&resize=1200x900'),
          ],
        ),
      ),);
  }
}
