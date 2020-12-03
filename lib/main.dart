import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_scan_kp/view/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: LoginPage(),
    );
  }
}
