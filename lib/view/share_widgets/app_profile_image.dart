import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';

class AppProfileImage extends StatelessWidget {
  const AppProfileImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 60.0,
          backgroundColor: AppColors.whiteColor,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
        SizedBox(
          width: AppSize.spaceX3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Aminur Hilman',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppSize.fontSizeX24,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'aminur@gmail.com',
            )
          ],
        ),
      ],
    );
  }
}
