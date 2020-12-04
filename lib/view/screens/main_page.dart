import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/screens/home_page.dart';
import 'package:my_scan_kp/view/screens/profile_page.dart';
import 'package:my_scan_kp/view/screens/transaction_page.dart';

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
                EvaIcons.cameraOutline,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Transaksi'),
              icon: Icon(EvaIcons.barChartOutline),
            ),
            BottomNavigationBarItem(
              title: Text('Profil'),
              icon: Icon(EvaIcons.personOutline),
            )
          ]),
      body: Container(
          width: AppSize.widthScreen(context),
          margin: EdgeInsets.fromLTRB(
            AppSize.spaceX2,
            0.0,
            AppSize.spaceX2,
            0.0,
          ),
          child: pages[selectedIndex]),
    );
  }
}
