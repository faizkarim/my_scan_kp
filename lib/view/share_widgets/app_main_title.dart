import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_size.dart';

class AppMainTitle extends StatelessWidget {
  final String title;

  AppMainTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: AppSize.spaceX4,
      ),
    );
  }
}
