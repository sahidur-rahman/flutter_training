import 'dart:ui';

import 'package:flutter/material.dart';

class LoginHomePage extends StatefulWidget {
  const LoginHomePage({Key? key}) : super(key: key);

  @override
  _LoginHomePageState createState() => _LoginHomePageState();
}

class _LoginHomePageState extends State<LoginHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: CircleAvatar(
              child: Image.asset('assets/images/my_image.png'),
              minRadius: 50,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: ListView(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    controller: emailController,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        // icon: Icon(Icons.mail),
                        prefixIcon: Icon(Icons.mail),
                        suffixIcon: emailController.text.isEmpty
                            ? Text('')
                            : GestureDetector(
                                onTap: () {
                                  emailController.clear();
                                },
                                child: Icon(Icons.close)),
                        hintText: 'example@mail.com',
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.red, width: 1))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextField(
                    obscureText: isVisible,
                    controller: passwordController,
                    onChanged: (value) {
                      print(value);
                    },
                    //
                    decoration: InputDecoration(
                        // icon: Icon(Icons.mail),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              isVisible = !isVisible;
                              setState(() {});
                            },
                            child: Icon(isVisible
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        hintText: 'type your password',
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.red, width: 1))),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                title: Text('Your submitted data '),
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.mail),
                                    title:
                                        Text(emailController.text.toString()),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.lock),
                                    title: Text(
                                        passwordController.text.toString()),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Text('Submit'),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
