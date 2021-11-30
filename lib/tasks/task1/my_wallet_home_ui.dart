import 'package:flutter/material.dart';
import 'package:flutter_training/tasks/task1/my_wallet_body.dart';

class MyWalletHomeUI extends StatelessWidget {
  const MyWalletHomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Back Button clicked!')));
          },
        ),
        centerTitle: true,
        title: Text('My Wallet'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search for my wallet records',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Search Button clicked!')));
            },
          ),
        ],
      ),
      body: MyWalletBodyUI(),
    );
  }
}
