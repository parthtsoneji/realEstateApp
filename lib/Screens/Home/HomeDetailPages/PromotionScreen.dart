import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Home/Feature/FeatureEstate.dart';

class PromotionScreeen extends StatefulWidget {
  const PromotionScreeen({Key? key}) : super(key: key);

  @override
  State<PromotionScreeen> createState() => _PromotionScreeenState();
}

class _PromotionScreeenState extends State<PromotionScreeen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const SizedBox(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundColor: ColorTheme.white1,
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 10,
                                color: ColorTheme.darkblue,
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: ColorTheme.white1,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: const MaterialStatePropertyAll(0),
                                shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    )),
                                backgroundColor:
                                MaterialStateProperty.all(ColorTheme.white1),
                              ),
                              onPressed: () {},
                              child: const Image(
                                image: AssetImage("images/HomeImages/promotion.png"),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left:  24,right: 24, top: 32),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3.6,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 2,
                              width: MediaQuery.of(context).size.width / 1.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  image: const DecorationImage(
                                      image: AssetImage("images/image5.png"),
                                      fit: BoxFit.cover)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22, top: 44),
                                    child: Text(
                                      "Halloween",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                          color: ColorTheme.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22),
                                    child: Text(
                                      "Sale!",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                          color: ColorTheme.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22, top: 8),
                                    child: Text(
                                      "All discount up to 60%",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                          color: ColorTheme.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: 56,
                                width: 93,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25.0),
                                  ),
                                  color: ColorTheme.darkblue,
                                ),
                                child: const Image(
                                    image: AssetImage('images/arrowhome.png')),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24, top: 25),
                    child: Center(
                      child: SizedBox(
                        height: 65,
                        width: 327,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Limited time",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                    color: ColorTheme.blueheading,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 26)),
                            const WidgetSpan(child: SizedBox(width: 7)),
                            TextSpan(
                                text: "Halloween",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                    color: ColorTheme.darkblue,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 26)),
                            TextSpan(
                                text: "\nSale",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                    color: ColorTheme.darkblue,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 26)),
                            const WidgetSpan(child: SizedBox(width: 7)),
                            TextSpan(
                                text: "is coming back",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                    color: ColorTheme.blueheading,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 26)),
                          ]),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 5.2, top: 10),
                    child: Row(
                      children: [
                        const Icon(Icons.calendar_today_outlined,
                            color: ColorTheme.green, size: 10),
                        const SizedBox(width: 5),
                        Text(
                          "October 27, 2022",
                          style: ThemeData.light().textTheme.labelSmall!.copyWith(
                              color: ColorTheme.greyopasity,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35,top: 25,right: 35),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 11,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: ColorTheme.green.withOpacity(0.1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.0),
                                  color: ColorTheme.greenaccent),
                              child: const Image(
                                  image: AssetImage("images/HomeImages/coupon.png"),
                                  color: ColorTheme.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child:  RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "HLWN40",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                          color: ColorTheme.blueheading,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                  TextSpan(
                                      text: "\nUse this coupon to get 40% off on your transaction",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                          color: ColorTheme.greyopasity,
                                          fontSize: MediaQuery.of(context).size.width / 60,
                                          fontWeight: FontWeight.w400))
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24,right: 24,top: 25),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: ColorTheme.white1,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip"
                              "\n \n \nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                              color: ColorTheme.blueheading,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 1.25,bottom: 43),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(ColorTheme.green),
                      shadowColor: MaterialStateProperty.all(ColorTheme.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FeatureEstate(),));
                    },
                    child: Text(
                      "Explore  more",
                      style: AppTheme.lightTheme()
                          .textTheme
                          .labelMedium!
                          .copyWith(
                          color: ColorTheme.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
