import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/screens/qr_scan_page.dart';

class HomeMenuButton extends StatelessWidget {
  final int index;

  HomeMenuButton({this.index});

  final String textKertas = 'Kertas';

  final List<String> textMenu = [
    'Penyediaan',
    'Penyerahan',
    'Kutipan',
    'Penandaan',
  ];

  final List<Color> colors = [
    AppColors.color1,
    AppColors.color2,
    AppColors.color3,
    AppColors.color4,
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => QrScanPage(
                      index: index,
                    )));
      },
      child: Card(
        shadowColor: colors[index],
        margin: EdgeInsets.all(8.0),
        color: colors[index],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppSize.widthScreen(context),
              padding: EdgeInsets.all(
                15.0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textMenu[index],
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.fontSizeX24,
                    ),
                  ),
                  Text(
                    textKertas,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.fontSizeX24,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(AppSize.spaceX1),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        EvaIcons.arrowCircleRight,
                        color: AppColors.whiteColor.withOpacity(0.6),
                        size: AppSize.spaceX4,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
