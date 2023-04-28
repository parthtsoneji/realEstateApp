// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realstateapp/Screens/SplashScreen/FirstProductTour.dart';
import '../../AppTheme/Theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => const ProductTour1(),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/image1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  ColorTheme.orablue.withOpacity(0.5), // 0.8 opacity
                  ColorTheme.blue.withOpacity(1.0), // 1.0 opacity
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                    )),
                Stack(
                  children: [
                    const Center(
                      child: Image(
                        image: AssetImage('images/Maskgroup.png'),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Column(
                          children: [
                            Text(
                              'Rise',
                              style: AppTheme.lightTheme()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    fontSize: 36,
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              'Real Estate',
                              style: AppTheme.lightTheme()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    fontSize: 36,
                                    color: ColorTheme.white,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                    )),
                SizedBox(
                  height: 54,
                  width: 210,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ColorTheme.green),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductTour1()));
                    },
                    child: Text(
                      "Let's Start",
                      style: AppTheme.lightTheme().textTheme.labelMedium,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        'Made with love',
                        style: AppTheme.lightTheme()
                            .textTheme
                            .labelSmall!
                            .copyWith(color: ColorTheme.white),
                      ),
                      Text(
                        'v.1.0',
                        style: AppTheme.lightTheme()
                            .textTheme
                            .labelSmall!
                            .copyWith(color: ColorTheme.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
