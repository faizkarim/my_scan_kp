import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        child: Column(
          children: [
            Container(
              width: AppSize.widthScreen(context),
              height: 160,
              child: Card(
                color: AppData.colors[index],
                shadowColor: AppData.colors[index].withOpacity(0.5),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 15.0,
                          top: 15.0,
                        ),
                        width: AppSize.widthScreen(context) / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              AppData.title[index].split(" ")[0],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: AppSize.fontSizeX24,
                              ),
                            ),
                            Text(
                              AppData.title[index].split(" ")[1],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: AppSize.fontSizeX24,
                              ),
                            ),
                            SizedBox(
                              height: AppSize.spaceX2,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: EdgeInsets.all(AppSize.space),
                              child: SvgPicture.asset(
                                'assets/icons/${AppData.svgIcon[index]}',
                                color: Colors.white,
                                width: 35.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        AppData.homeImageButton[index],
                        width: 140.0,
                        height: AppSize.heightScreen(context),
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppSize.spaceX1,
            ),
          ],
        ));
  }
}
