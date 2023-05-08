import 'package:flutter/material.dart';
import 'package:realstateapp/Screens/Home/Search/Deatil/FirstDetailsScreen.dart';

import 'package:realstateapp/Screens/Home/Search/Deatil/ReviewScreen.dart';
import 'package:realstateapp/Screens/Home/Search/Deatil/SliderImageScreen.dart';
import 'package:realstateapp/Screens/Home/Search/Deatil/ViewOnMapDetail.dart';
import 'package:realstateapp/Screens/Home/Transaction/TransactionReviewScreen.dart';


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
      home: TransactionReviewScreen(),
    );
  }
}
