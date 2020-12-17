import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_data.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/share_widgets/app_main_title.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionPage extends StatelessWidget {
  final List iconColor = [
    AppColors.color1,
    AppColors.color2,
    AppColors.color3,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppMainTitle(
          title: 'Transaksi',
        ),
        SizedBox(
          height: AppSize.spaceX3,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    AppData.title[index],
                  ),
                  leading: SvgPicture.asset(
                    'assets/icons/${AppData.svgIcon[index]}',
                    color: iconColor[index],
                    width: 35.0,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Anda telah berjaya imbas penyediaan kertas.'),
                      SizedBox(
                        height: AppSize.space,
                      ),
                      Row(
                        children: [
                          Icon(
                            TablerIcons.clock,
                            size: 18.0,
                            color: Colors.black.withOpacity(0.4),
                          ),
                          SizedBox(
                            width: AppSize.space,
                          ),
                          Text('6-12-2020 10:37:00')
                        ],
                      )
                    ],
                  ),
                  isThreeLine: true,
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 4),
        )
      ],
    );
  }
}
