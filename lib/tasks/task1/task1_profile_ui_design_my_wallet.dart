import 'package:flutter/material.dart';
import 'package:flutter_training/tasks/task1/my_wallet_home_ui.dart';

class MyWalletProfileUI extends StatelessWidget {
  const MyWalletProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,
          canvasColor: Colors.lightBlueAccent,
          appBarTheme: AppBarTheme(backgroundColor: Colors.lightGreen)),
      home: MyWalletHomeUI(),
    );
  }
}
