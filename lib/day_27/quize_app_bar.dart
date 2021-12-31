import 'package:flutter/material.dart';

class QuizeAppBar extends StatelessWidget {
  const QuizeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      leading: const Icon(Icons.home),
      title: const Text('Person'),
      backgroundColor: Colors.transparent,
    );
  }
}
