import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/share_widgets/app_main_title.dart';
import 'package:my_scan_kp/view/share_widgets/app_profile_image.dart';
import 'package:my_scan_kp/view/share_widgets/app_profile_menu.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppMainTitle(
            title: "Profil",
          ),
          SizedBox(
            height: AppSize.spaceX3,
          ),
          AppProfileImage(),
          SizedBox(
            height: AppSize.spaceX4,
          ),
          AppProfileMenu(),
        ],
      ),
    );
  }
}
