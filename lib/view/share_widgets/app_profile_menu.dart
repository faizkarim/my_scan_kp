import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_data.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/screens/change_password_page.dart';
import 'package:my_scan_kp/view/screens/edit_profile_page.dart';

class AppProfileMenu extends StatelessWidget {
  final List<Widget> menuWidget = [
    EditProfilePage(),
    ChangePasswordPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: AppData.profileMenu.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => menuWidget[index]));
            },
            title: Text(
              AppData.profileMenu[index],
              style: TextStyle(
                fontSize: AppSize.fontSizeX18,
                color: index == 4 ? Colors.red : Colors.black,
              ),
            ),
            leading: Icon(
              AppData.profileMenuIcon[index],
              color: index == 4 ? Colors.red : Colors.black,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: index == 4 ? Colors.red : Colors.black,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
