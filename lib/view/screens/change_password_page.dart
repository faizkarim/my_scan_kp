import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/share_widgets/app_button.dart';
import 'package:my_scan_kp/view/share_widgets/app_container.dart';
import 'package:my_scan_kp/view/share_widgets/app_input_field.dart';
import 'package:my_scan_kp/view/share_widgets/app_main_bar.dart';
import 'package:my_scan_kp/view/share_widgets/app_main_title.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key key}) : super(key: key);

  onPressed() {}
  @override
  Widget build(BuildContext context) {
    return AppMainBar(
      body: AppContainer(
        childWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppSize.spaceX1,
            ),
            AppMainTitle(
              title: 'Tukar Kata Laluan',
            ),
            SizedBox(
              height: AppSize.spaceX3,
            ),
            AppInputField(
              isPassword: true,
              hintText: 'Kata Laluan Lama',
              changePassword: 'true',
            ),
            SizedBox(
              height: AppSize.spaceX3,
            ),
            AppInputField(
              isPassword: true,
              hintText: 'Kata Laluan Baru',
              changePassword: 'true',
            ),
            SizedBox(
              height: AppSize.spaceX3,
            ),
            AppInputField(
              isPassword: true,
              hintText: 'Pengesahan Kata Laluan Baru',
              changePassword: 'true',
            ),
            SizedBox(
              height: AppSize.spaceX4,
            ),
            AppButton(
              btnText: 'Kemaskini',
              onPressed: onPressed,
              // onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}
