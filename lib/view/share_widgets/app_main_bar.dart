import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

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
            EvaIcons.arrowBackOutline,
            color: Colors.black,
          ),
        ),
      ),
      body: body,
    );
  }
}
