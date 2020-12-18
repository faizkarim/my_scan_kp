import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/screens/home_page.dart';

import 'app_button.dart';

class AppDialogBox extends StatelessWidget {
  const AppDialogBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.3),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/success_animation.json',
                fit: BoxFit.fill,
                height: AppSize.spaceX10 + 50,
                width: AppSize.spaceX10 + 50,
                animate: true,
                repeat: false,
              ),
              Text(
                'Imbasan Berjaya!',
                style: TextStyle(
                  fontSize: AppSize.fontSizeX18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Anda telah berjaya imbas penyerahan.',
              ),
              SizedBox(
                height: AppSize.spaceX2,
              ),
              AppButton(
                height: AppSize.spaceX7,
                isSuccessButton: true,
                btnText: 'Kembali',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
