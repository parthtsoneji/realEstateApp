// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Login/LoginOption.dart';
import 'package:realstateapp/Screens/SplashScreen/SecondProductTour.dart';

class ProductTour3 extends StatefulWidget {
  const ProductTour3({Key? key}) : super(key: key);

  @override
  State<ProductTour3> createState() => _ProductTour3State();
}

class _ProductTour3State extends State<ProductTour3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10,right: 24,left: 24),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                    elevation: MaterialStatePropertyAll(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: RichText(
            text: TextSpan(
              children: [
              TextSpan(text: 'Find',
                style: ThemeData.light()
                    .textTheme
                    .labelMedium!
                    .copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: ColorTheme.blueheading)),
                WidgetSpan(
                  child: SizedBox(width: 7),
                ),

                TextSpan(
                    text: "perfect choice",
                    style: ThemeData.light()
                        .textTheme
                        .labelMedium!
                        .copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: ColorTheme.blueAccent)),
                WidgetSpan(
                  child: SizedBox(width: 10),
                ),
                TextSpan(
                  text: "for",
                    style: ThemeData.light()
                        .textTheme
                        .labelMedium!
                        .copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: ColorTheme.blueheading)
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text("your future house",
              style: ThemeData.light()
                  .textTheme
                  .labelMedium!
                  .copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: ColorTheme.blueheading)),
        ),
        Padding(
          padding: const EdgeInsets.only(top:25,left: 24),
          child: Text("lorem ipsum dolar sit amet, consectetur",
              style: ThemeData.light()
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 12,color: ColorTheme.blueheading)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text("adipiscing elit, sed.",
              style: ThemeData.light()
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 12,color: ColorTheme.blueheading)),
        ),
        Expanded(
          flex: 1,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 100,
                    right: MediaQuery.of(context).size.width / 100,
                    bottom: MediaQuery.of(context).size.width / 100,
                    top: MediaQuery.of(context).size.height / 33),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(55)),
                    image: DecorationImage(
                      image: AssetImage('images/Product3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height / 7.2),
                child: const Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 100,
                    child: LinearProgressIndicator(
                      value: 0.6,
                      backgroundColor: Colors.grey,
                      valueColor:
                      AlwaysStoppedAnimation<Color>(ColorTheme.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.7,
                    left: MediaQuery.of(context).size.width / 6.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 9.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductTour2(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorTheme.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        child: const Center(
                          child: Image(
                            image: AssetImage('images/Vector.png'),
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 20,
                      ),
                      child: Center(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  ColorTheme.greenAccent),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginOption(),));
                            },
                            child: Text(
                              "Next",
                              style:
                              AppTheme.lightTheme().textTheme.labelMedium,
                            ),
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
    ),);
  }
}
