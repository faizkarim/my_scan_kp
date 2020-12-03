import 'package:flutter/material.dart';
import 'package:my_scan_kp/utils/app_colors.dart';
import 'package:my_scan_kp/utils/app_size.dart';
import 'package:my_scan_kp/view/auth/login_page.dart';
import 'package:my_scan_kp/view/share_widgets/app_button.dart';
import 'package:my_scan_kp/view/share_widgets/app_input_field.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

final TextEditingController fullnameController = TextEditingController();
final TextEditingController emelController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController passwordController2 = TextEditingController();

class _RegisterPageState extends State<RegisterPage> {
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
                height: AppSize.spaceX8,
              ),
              AppInputField(
                hintText: 'Nama Penuh',
                isPassword: false,
                textEditingController: fullnameController,
              ),
              SizedBox(
                height: AppSize.spaceX3,
              ),
              AppInputField(
                hintText: 'E-mel',
                isPassword: false,
                textEditingController: emelController,
              ),
              SizedBox(
                height: AppSize.spaceX3,
              ),
              AppInputField(
                hintText: 'Kata Laluan',
                isPassword: true,
                textEditingController: passwordController,
              ),
              SizedBox(
                height: AppSize.spaceX3,
              ),
              AppInputField(
                hintText: 'Pengesahan Kata Laluan',
                isPassword: true,
                textEditingController: passwordController2,
              ),
              SizedBox(
                height: AppSize.spaceX5,
              ),
              AppButton(
                btnText: 'Daftar Akaun',
                onPressed: showSomething,
              ),
              SizedBox(
                height: AppSize.spaceX3,
              ),
              GestureDetector(
                onTap: () {
                  fullnameController.text = '';
                  emelController.text = '';
                  passwordController.text = '';
                  passwordController2.text = '';

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'Log Masuk',
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
