import 'package:flutter/material.dart';

class LoginSubmittedData extends StatelessWidget {
  const LoginSubmittedData({
    Key? key,
    required this.email,
    required this.pass,
  }) : super(key: key);
  final String email, pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your email is : $email'),
              Text('Your password is : $pass'),
            ],
          ),
        ),
      ),
    );
  }
}
