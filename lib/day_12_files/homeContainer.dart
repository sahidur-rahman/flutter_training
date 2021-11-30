import 'package:flutter/material.dart';
import 'package:flutter_training/day_12_files/container_one.dart';
import 'package:flutter_training/day_12_files/container_two.dart';
import 'package:flutter_training/day_12_files/home_page.dart';

class HomePageContainer extends StatefulWidget {
  //final Function() nitifyParent;
  const HomePageContainer({Key? key}) : super(key: key);

  @override
  State<HomePageContainer> createState() => _HomePageContainerState();
}

class _HomePageContainerState extends State<HomePageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.greenAccent,
            minWidth: 100,
            height: 50,
            child: Text(
              'Page One',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: (){
              AppData.appBarTitle = AppBarTitle.pageOne;
              AppData.container = ContainerOne();
              print('Called from page one button');
              setState(() {

              });
            }
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            color: Colors.blueAccent,
            minWidth: 100,
            height: 50,
            child: Text(
              'Page Two',
              style: TextStyle(fontSize: 30),
            ),
            onPressed: () {
              setState(() {
                AppData.appBarTitle = AppBarTitle.pageTwo;
                AppData.container = ContainerTwo();
               // widget.nitifyParent();
              });
            },
          ),
        ],
      ),
    );
  }
}
