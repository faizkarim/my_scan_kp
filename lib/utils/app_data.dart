import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import 'app_colors.dart';

class AppData {
  static const List<String> title = [
    'Penyerahan Kertas',
    'Penandaan Kertas',
    'Kutipan Kertas',
  ];

  static const List svgIcon = [
    'file_download.svg',
    'file_upload.svg',
    'file_check.svg',
  ];

  static const List<Tab> tabBar = [
    Tab(text: 'Penyerahan'),
    Tab(text: 'Penandaan'),
    Tab(text: 'Kutipan'),
  ];

  static const List<String> profileMenu = [
    'Kemaskini Profil',
    'Tukar Kata Laluan',
    'Hubungi Kami',
    'Tentang Kami',
    'Log Keluar',
  ];

  static const List profileMenuIcon = [
    TablerIcons.edit,
    TablerIcons.lock,
    TablerIcons.phone_call,
    TablerIcons.help,
    TablerIcons.logout
  ];

  static const List<Color> colors = [
    AppColors.color1,
    AppColors.color2,
    AppColors.color3,
  ];

  static const List<String> homeImageButton = [
    'assets/images/geometry3.png',
    'assets/images/geometry2.png',
    'assets/images/geometry4.png',
  ];
}
