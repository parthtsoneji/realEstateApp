import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Login%20Ui/LoginOption.dart';
import 'package:realstateapp/Screens/Splash%20Screen/ProductTour2.dart';

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
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
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
                            builder: (context) => const ProductTour2(),
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
                      Row(
                        children: [
                          Text("Find",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: ColorTheme.darkblue)),
                          const SizedBox(width: 4),
                          Text("perfect choice",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: ColorTheme.blueaccess)),
                          const SizedBox(width: 4),
                          Text("for",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: ColorTheme.darkblue)),
                        ],
                      ),
                      Text("your future house",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: ColorTheme.darkblue)),
                      const SizedBox(height: 20),
                      Text("lorem ipsum dolar sit amet, consectetur",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(fontSize: 12)),
                      Text("adipiscing elit, sed.",
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
                      image: AssetImage('images/Product3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 2.2),
                  child: Column(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: LinearProgressIndicator(
                          value: 1,
                          backgroundColor: Colors.grey,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(ColorTheme.white),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 5.9),
                        child: Row(
                          children: [
                            Container(
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0)),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProductTour2(),));
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
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            SizedBox(
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
                                          const ProductTour3()));
                                },
                                child: Text(
                                  "Next",
                                  style:
                                  AppTheme.lightTheme().textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}