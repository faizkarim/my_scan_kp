import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
        Text(
          greeting(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppSize.largerText,
          ),
        ),
        Text(
          'Faiz Karim',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: AppSize.largerText,
          ),
        ),
        SizedBox(
          height: AppSize.spaceX2,
        ),
        Expanded(
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 4,
            itemBuilder: (context, index) {
              return HomeMenuButton(
                index: index,
              );
            },
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 3 : 2.5),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        )
      ],
    );
  }
}
