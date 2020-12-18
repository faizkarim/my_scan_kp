import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final Function onPressed;
  final double height;
  final bool isSuccessButton;

  AppButton({
    this.btnText,
    this.onPressed,
    this.height,
    this.isSuccessButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.widthScreen(context),
      height: height ?? AppSize.btnHeight,
      decoration: BoxDecoration(),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: isSuccessButton
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                )
              : BorderRadius.circular(5.0),
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
