import 'package:flutter/material.dart';
import 'package:realstateapp/Screens/Login%20Ui/FAQ&SignIn.dart';
import 'package:realstateapp/Screens/Login%20Ui/LoginOption.dart';
import 'package:realstateapp/Screens/Register/RegisterPage.dart';
import 'package:realstateapp/Screens/Splash%20Screen/ProductTourr.dart';
import 'package:realstateapp/Screens/Splash%20Screen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOption(),
    );
  }
}
