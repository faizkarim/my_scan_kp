import 'package:flutter/material.dart';

class AppSize {
  static double space = 5.0;
  static double spaceX1 = 10.0;
  static double spaceX2 = 20.0;
  static double spaceX3 = 30.0;
  static double spaceX4 = 40.0;
  static double spaceX5 = 50.0;
  static double spaceX6 = 60.0;
  static double spaceX7 = 70.0;
  static double spaceX8 = 80.0;
  static double spaceX9 = 90.0;
  static double spaceX10 = 100.0;

  //app width

  static double heightScreen(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double widthScreen(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double btnHeight = 46.0;

  //font size

  static double smallText = 14.0;
  static double mediumText = 16.0;
  static double fontSizeX18 = 18.0;
  static double fontSizeX32 = 32.0;
  static double largeText = 24.0;
  static double largerText = 30.0;
}
