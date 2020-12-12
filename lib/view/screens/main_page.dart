import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/view/screens/home_page.dart';
import 'package:my_scan_kp/view/screens/profile_page.dart';
import 'package:my_scan_kp/view/screens/transaction_page.dart';
import 'package:my_scan_kp/view/share_widgets/app_container.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    TransactionPage(),
    ProfilePage(),
  ];

  changeIndex(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: changeIndex,
            selectedItemColor: AppColors.primaryColor,
            items: [
              BottomNavigationBarItem(
                title: Text('Imbas'),
                icon: Icon(
                  TablerIcons.qrcode,
                ),
              ),
              BottomNavigationBarItem(
                title: Text('Transaksi'),
                icon: Icon(
                  TablerIcons.history,
                ),
              ),
              BottomNavigationBarItem(
                title: Text('Profil'),
                icon: Icon(
                  TablerIcons.user,
                ),
              )
            ]),
        body: AppContainer(
          childWidget: pages[selectedIndex],
        ));
  }
}
