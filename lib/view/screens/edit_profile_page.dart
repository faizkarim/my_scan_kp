import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/share_widgets/app_button.dart';
import 'package:my_scan_kp/view/share_widgets/app_container.dart';
import 'package:my_scan_kp/view/share_widgets/app_input_field.dart';
import 'package:my_scan_kp/view/share_widgets/app_main_bar.dart';
import 'package:my_scan_kp/view/share_widgets/app_main_title.dart';

class EditProfilePage extends StatelessWidget {
  onPressed() {}
  @override
  Widget build(BuildContext context) {
    return AppMainBar(
      body: AppContainer(
        childWidget: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSize.spaceX1,
              ),
              AppMainTitle(
                title: 'Kemaskini Profil',
              ),
              SizedBox(
                height: AppSize.spaceX3,
              ),
              AppInputField(
                isPassword: false,
                initialValue: 'Aminur Hilman',
              ),
              SizedBox(
                height: AppSize.spaceX3,
              ),
              AppInputField(
                isPassword: false,
                initialValue: 'aminur@gmail.com',
              ),
              SizedBox(
                height: AppSize.spaceX4,
              ),
              AppButton(
                btnText: 'Kemaskini',
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
