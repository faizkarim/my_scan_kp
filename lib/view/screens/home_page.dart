import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/share_widgets/app_main_title.dart';
import 'package:my_scan_kp/view/share_widgets/home_menu_button.dart';

class HomePage extends StatelessWidget {
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Selamat Pagi,';
    }
    if (hour < 17) {
      return 'Selamat Petang,';
    }
    return 'Selamat Petang,';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppMainTitle(
          title: greeting(),
        ),
        Text(
          'Aminur Hilman',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: AppSize.fontSizeX24,
          ),
        ),
        // Expanded(
        //   child: StaggeredGridView.countBuilder(
        //     crossAxisCount: 4,
        //     itemCount: 3,
        //     staggeredTileBuilder: (int index) =>
        //         new StaggeredTile.count(2, index.isEven ? 3 : 2.5),
        //     mainAxisSpacing: 4.0,
        //     crossAxisSpacing: 4.0,
        //     itemBuilder: (context, index) {
        //       return HomeMenuButton(
        //         index: index,
        //       );
        //     },
        //   ),
        // )
        Expanded(
          child: Center(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (context, index) {
                return HomeMenuButton(index: index);
              },
            ),
          ),
        ),
      ],
    );
  }
}
