import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/screens/change_password_page.dart';
import 'package:my_scan_kp/view/screens/edit_profile_page.dart';

class AppProfileMenu extends StatelessWidget {
  final List<String> menuTitle = [
    'Kemaskini Profil',
    'Tukar Kata Laluan',
    'Hubungi Kami',
    'Tentang Kami',
    'Log Keluar',
  ];

  final List menuIcon = [
    TablerIcons.edit,
    TablerIcons.lock,
    TablerIcons.phone_call,
    TablerIcons.help,
    TablerIcons.logout
  ];

  final List<Widget> menuWidget = [
    EditProfilePage(),
    ChangePasswordPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: menuTitle.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => menuWidget[index]));
            },
            title: Text(
              menuTitle[index],
              style: TextStyle(
                fontSize: AppSize.fontSizeX18,
                color: index == 4 ? Colors.red : Colors.black,
              ),
            ),
            leading: Icon(
              menuIcon[index],
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
