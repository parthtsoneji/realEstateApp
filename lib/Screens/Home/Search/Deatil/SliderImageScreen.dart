import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Home/Transaction/TransactionReviewScreen.dart';

class SliderImageScreen extends StatefulWidget {
  const SliderImageScreen({Key? key}) : super(key: key);

  @override
  State<SliderImageScreen> createState() => _SliderImageScreenState();
}

class _SliderImageScreenState extends State<SliderImageScreen> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: isSelect == true
              ? Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("images/Notification/notifi8.png"),
                              fit: BoxFit.cover)),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelect = false;
                              });
                            },
                            child: Container(
                              height: 83,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  color: ColorTheme.white.withOpacity(0.25)),
                              child: Center(
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.arrow_back_ios_rounded,
                                      size: 13,
                                      color: ColorTheme.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        size: 13,
                                        color: ColorTheme.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 83,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20)),
                                color: ColorTheme.white.withOpacity(0.25)),
                            child: Center(
                              child: Stack(
                                children: const [
                                  Icon(
                                    Icons.navigate_next,
                                    color: ColorTheme.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Icon(
                                      Icons.navigate_next,
                                      color: ColorTheme.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 24),
                          child: GestureDetector(
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
                        ),
                        const Expanded(child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 25, left: 24, right: 24),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 70,
                                width: 162,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: ColorTheme.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Image(
                                          image: AssetImage(
                                              "images/Notification/notify2.png")),
                                      const SizedBox(width: 6),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Samuel Ella",
                                              style: ThemeData.light()
                                                  .textTheme
                                                  .labelLarge!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12,
                                                      color: ColorTheme
                                                          .blueheading),
                                            ),
                                            Row(
                                              children: const [
                                                Icon(Icons.star,
                                                    color:
                                                        ColorTheme.staryellow,
                                                    size: 10),
                                                SizedBox(width: 2),
                                                Icon(Icons.star,
                                                    color:
                                                        ColorTheme.staryellow,
                                                    size: 10),
                                                SizedBox(width: 2),
                                                Icon(Icons.star,
                                                    color:
                                                        ColorTheme.staryellow,
                                                    size: 10),
                                                SizedBox(width: 2),
                                                Icon(Icons.star,
                                                    color:
                                                        ColorTheme.staryellow,
                                                    size: 10),
                                                SizedBox(width: 2),
                                                Icon(Icons.star,
                                                    color:
                                                        ColorTheme.staryellow,
                                                    size: 10),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
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
                                  const SizedBox(height: 8),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/Search/search6.png"))),
                                  ),
                                  const SizedBox(height: 8),
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/Search/search7.png"))),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              : Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("images/Notification/notify9.png"),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 24),
                          child: GestureDetector(
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
                        ),
                        const Expanded(child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.only(left: 24,right: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 122,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: ColorTheme.blue.withOpacity(0.69)),
                                child: Center(
                                  child: Text(
                                    "Living Room",
                                    style: ThemeData.light()
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: ColorTheme.white),
                                  ),
                                ),
                              ),
                              const CircleAvatar(
                                radius: 25,
                                backgroundColor: ColorTheme.white,
                                child: Icon(Icons.message,color: ColorTheme.blueheading,size: 20),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24,right: 24,top: 15,bottom: 24),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 4.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: ColorTheme.white.withOpacity(0.8)
                            ),
                            child:GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionReviewScreen(),));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height,
                                      width: MediaQuery.of(context).size.width / 2.5,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: AssetImage("images/ima.png"),fit: BoxFit.cover
                                          )
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                              padding:
                                              EdgeInsets.all(8.0),
                                              child: CircleAvatar(
                                                radius: 16,
                                                backgroundColor:
                                                Colors.transparent,
                                                child: Image(
                                                  image:
                                                  AssetImage("images/HomeImages/heartgrey.png"),
                                                  height: 100,
                                                ),
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    14,
                                                left: 12),
                                            child: Container(
                                              height: MediaQuery.of(context).size.height / 30,
                                              width: MediaQuery.of(context).size.width / 8,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      8),
                                                  color: ColorTheme.darkblue
                                                      .withOpacity(0.69)),
                                              child: Center(
                                                child: Text("Apartment",
                                                    style: ThemeData.light()
                                                        .textTheme
                                                        .labelLarge!
                                                        .copyWith(
                                                        color: ColorTheme
                                                            .white,
                                                        fontWeight:
                                                        FontWeight
                                                            .w500,
                                                        fontSize: MediaQuery.of(context).size.width / 50)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: SizedBox(
                                        height: MediaQuery.of(context).size.height / 3.52,
                                        width: 109,
                                        child: Column(
                                          children: [
                                            Text("Sky Dandelions Apartment",
                                              style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 15,color: ColorTheme.blueheading),),
                                            const SizedBox(height: 15),
                                            Row(
                                              children: [
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    const Icon(Icons.star,
                                                        color: ColorTheme.staryellow,
                                                        size: 12),
                                                    Text(
                                                      "4.9",
                                                      style: ThemeData.light()
                                                          .textTheme
                                                          .labelSmall!
                                                          .copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                          FontWeight.w700,
                                                          color: ColorTheme
                                                              .blueheading),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 15),
                                            Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      "images/User.png"),
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5),
                                                  child: Text(
                                                      "Jakarta, Indonesia",
                                                      style: ThemeData.light()
                                                          .textTheme
                                                          .labelLarge!
                                                          .copyWith(
                                                          color: ColorTheme
                                                              .lightdark,
                                                          fontSize: 10,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400)),
                                                ),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 83,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: ColorTheme.white.withOpacity(0.25)),
                            child: Center(
                              child: Stack(
                                children: const [
                                  Icon(
                                    Icons.arrow_back_ios_rounded,
                                    size: 13,
                                    color: ColorTheme.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      size: 13,
                                      color: ColorTheme.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelect = true;
                              });
                            },
                            child: Container(
                              height: 83,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                  color: ColorTheme.white.withOpacity(0.25)),
                              child: Center(
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.navigate_next,
                                      color: ColorTheme.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: ColorTheme.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 3,
                          left: MediaQuery.of(context).size.width / 4),
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: ColorTheme.white.withOpacity(0.8),
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.circle_rounded,
                              color: ColorTheme.green,
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorTheme.white),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jati dining table",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                              color: ColorTheme.blueheading,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12),
                                    ),
                                    Text(
                                      "2 people capacity",
                                      style: ThemeData.light()
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: ColorTheme.lightdark,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 8),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
    );
  }
}
