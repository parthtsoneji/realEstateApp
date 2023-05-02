import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Login/LoginOption.dart';
import 'package:realstateapp/Screens/SplashScreen/SecondProductTour.dart';

class ProductTour1 extends StatefulWidget {
  const ProductTour1({Key? key}) : super(key: key);

  @override
  State<ProductTour1> createState() => _ProductTour1State();
}

class _ProductTour1State extends State<ProductTour1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 24, right: 24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                          elevation: const MaterialStatePropertyAll(0),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(RoundedRectangleBorder(
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
            padding: const EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Find best Place",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontSize: 25, fontWeight: FontWeight.w500)),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                        text: 'to stay in',
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontWeight: FontWeight.w500, fontSize: 25)),
                          WidgetSpan(child: SizedBox(width: 5)),
                          TextSpan(
                              text: "good price",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                      color: ColorTheme.blueAccent))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("lorem ipsum dolar sit amet, consectetur",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w400)),
                    ),
                    Text("adipiscing elit, sed",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
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
                        image: AssetImage('images/product1.png'),
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
                        value: 0,
                        backgroundColor: Colors.grey,
                        valueColor:
                        AlwaysStoppedAnimation<Color>(ColorTheme.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 1.8,
                      bottom: MediaQuery.of(context).size.height / 17
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              ColorTheme.green),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
