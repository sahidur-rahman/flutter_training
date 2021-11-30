import 'package:flutter/material.dart';

class ProfilePageUI extends StatelessWidget {
  const ProfilePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('Profile Page UI'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/image.jpg'),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Text(
                'Jonathon Cherly',
                style: TextStyle(
                    fontSize: 24, color: Colors.white, fontFamily: 'Pacifico'),
              ),
              Text(
                'Flutter Developer'.toUpperCase(),
                style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 2,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 150,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 70,
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        size: 28,
                        color: Color(0xff159588),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        '01700000000',
                        style: TextStyle(
                            color: Color(0xff159588),
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 70,
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        size: 28,
                        color: Color(0xff159588),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'jonathon@email.com',
                        style: TextStyle(
                            color: Color(0xff159588),
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
