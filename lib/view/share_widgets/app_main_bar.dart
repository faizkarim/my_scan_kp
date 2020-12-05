import 'package:flutter/material.dart';

class AppMainBar extends StatelessWidget {
  final Widget body;

  AppMainBar({this.body});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      elevation: 0.0,
    );
  }
}
