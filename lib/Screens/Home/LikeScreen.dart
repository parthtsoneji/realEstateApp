import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({Key? key}) : super(key: key);

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {

  bool isSelected = false;
  List<HomeEstate> imagesss = [
    HomeEstate(
        image: 'images/ima.png',
        name: 'Wings Tower',
        icon: "images/HomeImages/heart.png",
        price: "\$ 220",
        start: "4.9"),
    HomeEstate(
        image: 'images/image7.png',
        name: 'Mill Sper House',
        icon: "images/HomeImages/heartgrey.png",
        price: "\$ 271",
        start: "3.9"),
    HomeEstate(
        image: 'images/image6.png',
        name: 'Bungalow House',
        icon: "images/HomeImages/heartgrey.png",
        price: "\$ 260",
        start: "5"),
  ];
  List<FeatureImages> imagesFeature = [
    FeatureImages(name: "Villa", image: 'images/HomeImages/image26.png'),
    FeatureImages(image: "images/HomeImages/image25.png", name: "Apartment"),
    FeatureImages(image: "images/HomeImages/image13.png", name: "House"),
  ];
  bool select  = false;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                      ),
                    ),
                    Text(
                      "My favorite",
                      style: ThemeData.light()
                          .textTheme
                          .labelMedium!
                          .copyWith(
                          color: ColorTheme.blueheading,
                          fontSize:
                          MediaQuery.of(context).size.height / 48,
                          fontWeight: FontWeight.w700),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: ColorTheme.white1,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(0),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                          backgroundColor:
                          MaterialStateProperty.all(ColorTheme.white1),
                        ),
                        onPressed: () {
                          setState(() {
                            select = true;
                          });
                        },
                        child: const Center(
                            child: Icon(
                              Icons.delete,
                              color: ColorTheme.blueheading,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Found",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                fontSize:
                                MediaQuery.of(context).size.height /
                                    35,
                                color: ColorTheme.blueheading,
                                fontWeight: FontWeight.w400)),
                        const WidgetSpan(
                            child: SizedBox(
                              width: 5,
                            )),
                        TextSpan(
                            text: "0",
                            style: ThemeData.light()
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                fontSize:
                                MediaQuery.of(context).size.height /
                                    30,
                                color: ColorTheme.blueheading,
                                fontWeight: FontWeight.w700)),
                        const WidgetSpan(
                            child: SizedBox(
                              width: 5,
                            )),
                        TextSpan(
                            text: "estates",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                fontSize:
                                MediaQuery.of(context).size.height /
                                    35,
                                color: ColorTheme.blueheading,
                                fontWeight: FontWeight.w400)),
                      ]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ColorTheme.white1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = true;
                              });
                            },
                            child: Container(
                              height: 24,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: isSelected
                                    ? ColorTheme.white
                                    : ColorTheme.white1,
                              ),
                              child: const Center(
                                  child: Image(
                                    image:
                                    AssetImage("images/FeatureList/dot1.png"),
                                    color: ColorTheme.blueheading,
                                  )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = false;
                              });
                            },
                            child: Container(
                              height: 24,
                              width: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: isSelected
                                    ? ColorTheme.white1
                                    : ColorTheme.white,
                              ),
                              child: const Center(
                                  child: Image(
                                    image:
                                    AssetImage("images/FeatureList/dot3.png"),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              isSelected == false ? Column(
               children: [
                 SizedBox(height: MediaQuery.of(context).size.height / 8),
                 const Image(
                     image: AssetImage("images/Notification/alert1.png")),
                 const SizedBox(height: 25),
                 RichText(
                     text: TextSpan(children: [
                       TextSpan(
                           text: "Your favorite page is",
                           style: ThemeData.light().textTheme.labelMedium!.copyWith(
                               fontSize: 25,
                               fontWeight: FontWeight.w500,
                               color: ColorTheme.blueheading)),
                       const WidgetSpan(child: SizedBox(width: 5)),
                       TextSpan(
                           text: "\n            empty",
                           style: ThemeData.light().textTheme.labelMedium!.copyWith(
                               fontWeight: FontWeight.w800,
                               fontSize: 25,
                               color: ColorTheme.darkblue))
                     ])),
                 Padding(
                   padding: EdgeInsets.only(
                       top: 20, bottom: MediaQuery.of(context).size.height / 10),
                   child: SizedBox(
                     height: 50,
                     width: MediaQuery.of(context).size.width / 1.5,
                     child: Text(
                         "Click add button above to start exploring and choose your favorite estates.",
                         textAlign: TextAlign.center,
                         style: ThemeData.light().textTheme.labelLarge!.copyWith(
                             fontWeight: FontWeight.w400,
                             fontSize: 15,
                             color: ColorTheme.lightdark)),
                   ),
                 ),
               ],
             ) : Column(children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 30,
                        left: MediaQuery.of(context).size.width / 20,
                        right: MediaQuery.of(context).size.width / 20),
                    child: SizedBox(
                      height: 920,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 12,
                            mainAxisExtent:
                            MediaQuery.of(context).size.height / 2.9,
                            childAspectRatio:
                            MediaQuery.of(context).size.height / 800,
                            mainAxisSpacing: 14,
                            crossAxisCount: 2),
                        itemCount: imagesss.length,
                        itemBuilder: (context, index) {
                          final select = imagesss[index];
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            color: ColorTheme.white1,
                            child: Stack(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                        MediaQuery.of(context).size.width /
                                            70,
                                        right:
                                        MediaQuery.of(context).size.width /
                                            70,
                                        top:
                                        MediaQuery.of(context).size.height /
                                            100,
                                        bottom: 10),
                                    child: Container(
                                      height:
                                      MediaQuery.of(context).size.height /
                                          4.1,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                          image: AssetImage(select.image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: CircleAvatar(
                                                  radius: 16,
                                                  backgroundColor:
                                                  Colors.transparent,
                                                  child: Image(
                                                    image:
                                                    AssetImage(select.icon),
                                                    height: 100,
                                                  ),
                                                )),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    9,
                                                right: 10),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                alignment: Alignment.center,
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    25,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
                                                    color: ColorTheme.darkblue),
                                                child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: select.price,
                                                        style: ThemeData.light()
                                                            .textTheme
                                                            .labelSmall!
                                                            .copyWith(
                                                            color:
                                                            ColorTheme
                                                                .white,
                                                            fontWeight:
                                                            FontWeight
                                                                .w600,
                                                            fontSize: 12)),
                                                    TextSpan(
                                                        text: "/month",
                                                        style: ThemeData.light()
                                                            .textTheme
                                                            .labelSmall!
                                                            .copyWith(
                                                            color:
                                                            ColorTheme
                                                                .white,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500,
                                                            fontSize: 8)),
                                                  ]),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                        MediaQuery.of(context).size.width /
                                            30),
                                    child: Text(
                                      select.name,
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: ColorTheme.blueheading),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                        MediaQuery.of(context).size.width /
                                            30,
                                        top: 10.5),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.star,
                                            color: ColorTheme.staryellow,
                                            size: 12),
                                        const SizedBox(width: 3),
                                        Text(
                                          "4.9",
                                          style: ThemeData.light()
                                              .textTheme
                                              .labelSmall!
                                              .copyWith(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w700,
                                              color:
                                              ColorTheme.blueheading),
                                        ),
                                        const SizedBox(width: 15),
                                        const Image(
                                          image: AssetImage("images/User.png"),
                                          height: 15,
                                        ),
                                        Padding(
                                            padding:
                                            const EdgeInsets.only(left: 5),
                                            child: Text("Jakarta, Indonesia",
                                                style: ThemeData.light()
                                                    .textTheme
                                                    .labelLarge!
                                                    .copyWith(
                                                    color: ColorTheme
                                                        .greyopasity,
                                                    fontSize: 8,
                                                    fontWeight:
                                                    FontWeight.w400))),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          );
                        },
                      ),
                    ),
                  )
                ]),
            ],
          ),
        ),
      ),
    );
  }
}
