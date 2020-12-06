import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class AppMainBar extends StatelessWidget {
  final Widget body;
  AppMainBar({this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          borderRadius: BorderRadius.circular(30.0),
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            TablerIcons.arrow_left,
            color: Colors.black,
          ),
        ),
      ),
      body: body,
    );
  }
}
