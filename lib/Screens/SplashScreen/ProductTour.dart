// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Login/LoginOption.dart';
import 'package:realstateapp/Screens/SplashScreen/ProductTourr.dart';

class ProductTour1 extends StatefulWidget {
  const ProductTour1({Key? key}) : super(key: key);

  @override
  State<ProductTour1> createState() => _ProductTour1State();
}

class _ProductTour1State extends State<ProductTour1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Image(
                  image: AssetImage('images/Maskgroup.png'),
                  height: 90,
                  width: 90,
                ),
                SizedBox(
                  height: 38,
                  width: 86,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(ColorTheme.grey),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginOption(),
                            ));
                      },
                      child: Text(
                        "skip",
                        style: ThemeData.light()
                            .textTheme
                            .labelSmall!
                            .copyWith(color: ColorTheme.black),
                      )),
                )
              ]),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: SizedBox(
                    height: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Find best Place",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text("to stay in",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25)),
                            const SizedBox(
                              width: 4,
                            ),
                            Text("good price",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: ColorTheme.blueaccess))
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text("lorem ipsum dolar sit amet, consectetur",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 12)),
                        Text("adipiscing elit, sed",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(fontSize: 12)),
                      ],
                    )),
              ),
            ]),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 7,
                      right: 7,
                      top: MediaQuery.of(context).size.height / 33),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.63,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(55)),
                      image: DecorationImage(
                        image: AssetImage('images/product1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 2.2),
                  child: Column(
                    children: [
                      const Center(
                        child: SizedBox(
                          width: 100,
                          child: LinearProgressIndicator(
                            value: 0.3,
                            backgroundColor: Colors.grey,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(ColorTheme.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: SizedBox(
                          height: 54,
                          width: 210,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorTheme.deepaccent),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductTour2()));
                            },
                            child: Text(
                              "Next",
                              style:
                                  AppTheme.lightTheme().textTheme.labelMedium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
