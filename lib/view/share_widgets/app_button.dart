import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final Function onPressed;

  AppButton({this.btnText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.widthScreen(context),
      height: AppSize.btnHeight,
      decoration: BoxDecoration(),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        onPressed: onPressed,
        color: AppColors.primaryColor,
        child: Text(btnText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: AppSize.mediumText,
            )),
      ),
    );
  }
}
