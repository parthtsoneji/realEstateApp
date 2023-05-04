import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';

class FirstDetailScreen extends StatefulWidget {
  const FirstDetailScreen({Key? key}) : super(key: key);

  @override
  State<FirstDetailScreen> createState() => _FirstDetailScreenState();
}

class _FirstDetailScreenState extends State<FirstDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.8,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            image: AssetImage("images/Search/search4.png"),
                            fit: BoxFit.fill)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
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
                            const Expanded(child: SizedBox()),
                            const SizedBox(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundColor: ColorTheme.white1,
                                child: Icon(
                                  Icons.ios_share_outlined,
                                  size: 20,
                                  color: ColorTheme.darkblue,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("images/HomeImages/heart.png"),
                                      fit: BoxFit.cover)),
                            )
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 95,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: ColorTheme.darkblue),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: ColorTheme.staryellow,
                                      size: 15,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "4.9",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: ColorTheme.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            Container(
                              width: 95,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: ColorTheme.darkblue),
                              child: Center(
                                child: Text(
                                  "Apartment",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: ColorTheme.white),
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/Search/search5.png"))),
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/Search/search6.png"))),
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/Search/search7.png"))),
                                  child: Center(
                                      child: Text(
                                    "+3",
                                    style: ThemeData.light()
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: ColorTheme.white),
                                  )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 24,top: 15),
              child: RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: "Wings Tower",
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(fontSize: 25,fontWeight: FontWeight.w700,color: ColorTheme.blueheading),
                  ),
                  WidgetSpan(child: SizedBox(width: MediaQuery.of(context).size.width / 3.5,)),
                  TextSpan(
                    text: "\$ 220",
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(fontSize: 25,fontWeight: FontWeight.w700,color: ColorTheme.blueheading),
                  )
                ]
              )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24,right: 24,top: 15),
              child: RichText(text: TextSpan(
                  children: [
                    WidgetSpan(child: Icon(Icons.location_on,color: ColorTheme.blueheading,size: 15)),
                    WidgetSpan(child: SizedBox(width: 7)),
                    TextSpan(
                      text: "Jakarta, Indonesia",
                      style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 12,fontWeight: FontWeight.w400,color: ColorTheme.lightdark),
                    ),
                    WidgetSpan(child: SizedBox(width: MediaQuery.of(context).size.width / 2.8,)),
                    TextSpan(
                      text: "per month",
                      style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 12,fontWeight: FontWeight.w400,color: ColorTheme.lightdark),
                    )
                  ]
              )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 24,right: 24),
              child: Row(
                children: [
                  Container(
                     width: 72,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorTheme.green
                    ),
                    child: Center(
                      child: Text(
                        "Rent",
                        style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.white,fontSize: 10,fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 72,
                    height: 47,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorTheme.white1
                    ),
                    child: Center(
                      child: Text(
                        "Buy",
                        style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontSize: 10,fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: ColorTheme.white1
                    ),
                    child: Center(
                      child: Icon(Icons.rotate_90_degrees_ccw,color: ColorTheme.blueheading,size: 22),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 24,right: 24),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 0.2,
                color: ColorTheme.locationcolor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20,left: 24,right: 24),
              child: Container(
                height: 85,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorTheme.white1
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Image(image: AssetImage("images/Notification/notify8.png"),width: 38,height: 38),
                      SizedBox(width: 24),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Anderson",
                            style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontSize: 14,fontWeight: FontWeight.w700),    ),

                          TextSpan(
                            text: "\n Real Estate Agent",
                            style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.lightdark,fontSize: 9,fontWeight: FontWeight.w400),
                          ),
                        ]
                      )),
                      Expanded(child: SizedBox()),
                      Icon(Icons.chat,size: 20,color: ColorTheme.blueheading,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
