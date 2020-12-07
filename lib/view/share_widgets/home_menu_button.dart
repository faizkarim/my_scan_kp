import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_data.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/screens/qr_scan_page.dart';

class HomeMenuButton extends StatelessWidget {
  final int index;

  HomeMenuButton({this.index});

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
        shadowColor: AppData.colors[index],
        margin: EdgeInsets.all(8.0),
        color: AppData.colors[index],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: AppSize.widthScreen(context),
              padding: EdgeInsets.all(
                15.0,
              ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppData.title[index].split(" ")[0],
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.fontSizeX18,
                    ),
                  ),
                  Text(
                    AppData.title[index].split(" ")[1],
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: AppSize.fontSizeX18,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                    ),
                    child: Image.asset(
                      AppData.homeImageButton[index],
                      width: 100.0,
                      height: 120.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(AppSize.spaceX1),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        TablerIcons.arrow_right_circle,
                        color: AppColors.whiteColor.withOpacity(0.5),
                        size: AppSize.spaceX4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
