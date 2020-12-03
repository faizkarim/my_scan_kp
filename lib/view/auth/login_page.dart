import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/auth/register_page.dart';
import 'package:my_scan_kp/view/share_widgets/app_button.dart';
import 'package:my_scan_kp/view/share_widgets/app_input_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

final TextEditingController emelController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ;

    showSomething() {
      print(emelController.text);
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: AppSize.widthScreen(context),
          margin: EdgeInsets.fromLTRB(
            AppSize.spaceX2,
            AppSize.spaceX10,
            AppSize.spaceX2,
            0.0,
          ),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                ),
              ),
              SizedBox(
                height: AppSize.spaceX10,
              ),
              AppInputField(
                hintText: 'E-mel',
                isPassword: false,
                textEditingController: emelController,
              ),
              SizedBox(
                height: AppSize.spaceX4,
              ),
              AppInputField(
                hintText: 'Kata Laluan',
                isPassword: true,
                textEditingController: passwordController,
              ),
              SizedBox(
                height: AppSize.spaceX4,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Lupa kata laluan?',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              ),
              SizedBox(
                height: AppSize.spaceX4,
              ),
              AppButton(
                btnText: 'Log Masuk',
                onPressed: showSomething,
              ),
              SizedBox(
                height: AppSize.spaceX3,
              ),
              GestureDetector(
                onTap: () {
                  emelController.text = '';
                  passwordController.text = '';
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(
                  'Buat Akaun',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
