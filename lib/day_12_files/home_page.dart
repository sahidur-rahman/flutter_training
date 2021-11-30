import 'package:flutter/material.dart';
import 'package:flutter_training/day_12_files/container_one.dart';
import 'package:flutter_training/day_12_files/container_two.dart';
import 'package:flutter_training/day_12_files/homeContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppBarTitle.homePage),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  accountName: Text('Shaidur'),
                  accountEmail: Text('sahidur8500@gmail.com')),
              ListTile(
                title: Text('PageOne'),
                onTap: () {},
              )
            ],
          ),
        ),
        body: AppData.container);
  }

   refresh() {
      setState(() {});
    }
}

class AppBarTitle {
  static String homePage = "Home Page";
  static String pageOne = "Page One";
  static String pageTwo = "Page Two";
  static String pageThree = "Page Three";
}

class AppData {
  static var appBarTitle = AppBarTitle.homePage;
  static dynamic container = HomePageContainer();
}
