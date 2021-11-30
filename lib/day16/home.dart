import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/day16/pages_widget/about_page.dart';
import 'package:flutter_training/day16/pages_widget/home_page.dart';
import 'package:flutter_training/day16/pages_widget/profile_page.dart';
import 'package:flutter_training/day16/pages_widget/users_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [HomePage(), ProfilePage(), UsersPage(), AboutPage()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar App'),
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        onTap: (index) {
          setState(() {

            this.index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: 'Users'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }
}
