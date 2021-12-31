import 'package:flutter/material.dart';
import 'package:flutter_training/day_27/quize_app_bar.dart';
import 'package:flutter_training/day_27/quize_app_body.dart';

class QuizeAppHome extends StatefulWidget {
  const QuizeAppHome({Key? key}) : super(key: key);

  @override
  _QuizeAppHomeState createState() => _QuizeAppHomeState();
}

// ignore: must_be_immutable
class _QuizeAppHomeState extends State<QuizeAppHome> with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blueAccent,
      appBar: PreferredSize(
        child: const QuizeAppBar(),
        preferredSize: preferredSize,
      ),
      body: QuizeAppBody(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Element createElement() {
    throw UnimplementedError();
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    throw UnimplementedError();
  }

  @override
  Key? get key => throw UnimplementedError();

  @override
  String toStringDeep(
      {String prefixLineOne = '',
      String? prefixOtherLines,
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    throw UnimplementedError();
  }

  @override
  String toStringShallow(
      {String joiner = ', ',
      DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    throw UnimplementedError();
  }
}
