import 'package:flutter/material.dart';
import 'package:realstateapp/Screens/Home/Agent/AgentProfile.dart';
import 'package:realstateapp/Screens/Home/Feature/FourthFeatureList.dart';
import 'package:realstateapp/Screens/Home/HomeScreen.dart';
import 'package:realstateapp/Screens/Home/Notification/ChatBox.dart';
import 'package:realstateapp/Screens/Home/Notification/NotificationList.dart';
import 'package:realstateapp/Screens/Home/Search/Deatil/FirstDetailsScreen.dart';
import 'package:realstateapp/Screens/Home/Search/FourthSearchScreen.dart';
import 'package:realstateapp/Screens/SplashScreen/SplashScreen.dart';

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
      home: SplashScreen(),
    );
  }
}
