import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_size.dart';

class AppContainer extends StatelessWidget {
  final Widget childWidget;
  AppContainer({this.childWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.widthScreen(context),
      margin: EdgeInsets.fromLTRB(
        AppSize.spaceX2,
        0.0,
        AppSize.spaceX2,
        0.0,
      ),
      child: childWidget,
    );
  }
}
