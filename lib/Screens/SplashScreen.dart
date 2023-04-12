// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realstateapp/Screens/ProductTour1.dart';

import '../AppTheme/Theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       const Duration(seconds: 5),
  //           () => Navigator.of(context).pushReplacement(MaterialPageRoute(
  //           builder: (BuildContext context) => const ProductTour1())));
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: const Image(image: AssetImage('images/image1.png'),fit: BoxFit.cover)),

            Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Stack(
                      children: [
                        Center(child: Image(image: AssetImage('images/Maskgroup.png'))),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150),
                          child: Column(
                            children: [
                              Text("Rise",style: AppTheme.lightTheme().textTheme.labelMedium!.copyWith(fontSize: 36,color: ColorTheme.white)),
                              Text("Real Estate",style: AppTheme.lightTheme().textTheme.labelMedium!.copyWith(fontSize: 36,color: ColorTheme.white)),]),
                        ),
                      ),                    ],
                      ),
                  ),
                  Padding(
                      padding:
                      const EdgeInsets.only(top: 230),
                      child: SizedBox(
                        height: 54,
                        width: 210,
                        child: ElevatedButton(
                          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(ColorTheme.deepaccent)),
                          onPressed: () {},
                          child: Text(
                            "Let's Start",
                            style: AppTheme.lightTheme().textTheme.labelMedium,
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Text("Made with love",style: AppTheme.lightTheme().textTheme.labelSmall,),
                      Text("v.1.0",style: AppTheme.lightTheme().textTheme.labelLarge,),
                    ],
                  )
                ],
              ),
            ),

          ],
        ));
  }
}
