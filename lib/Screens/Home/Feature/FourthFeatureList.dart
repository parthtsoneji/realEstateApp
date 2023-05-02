import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Agent/AgentListScreen.dart';

class FourthLocationList extends StatefulWidget {
  const FourthLocationList({Key? key}) : super(key: key);

  @override
  State<FourthLocationList> createState() => _FourthLocationListState();
}

class _FourthLocationListState extends State<FourthLocationList> {
  List<FeatureImages> imagesFeature = [
    FeatureImages(name: "Villa", image: 'images/HomeImages/image26.png'),
    FeatureImages(image: "images/HomeImages/image25.png", name: "Apartment"),
    FeatureImages(image: "images/HomeImages/image13.png", name: "House"),
  ];
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 280,
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: const Image(
                        image: AssetImage("images/FeatureList/image14.png"),
                        fit: BoxFit.fill,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 195,
                          width: 100,
                          child: const Image(
                            image:
                                AssetImage("images/FeatureList/image13.png"),
                            fit: BoxFit.fill,
                          )),
                      Container(
                          height: 90,
                          width: 100,
                          child: const Image(
                            image:
                                AssetImage("images/FeatureList/image12.png"),
                            fit: BoxFit.fill,
                          )),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 24, right: 24),
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
                        const SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundColor: ColorTheme.white1,
                            child: Icon(
                              Icons.filter_tilt_shift,
                              size: 20,
                              color: ColorTheme.blueheading,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 3.1,
                        left: 24),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Bali",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                25,
                                        color: ColorTheme.blueheading,
                                        fontWeight: FontWeight.w700)),

                            TextSpan(
                                text:
                                    "\nOur recommended real estates in Jakarta.",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                60,
                                        color: ColorTheme.blueheading,
                                        fontWeight: FontWeight.w400)),
                          ]),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: MediaQuery.of(context).size.height / 40),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorTheme.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ColorTheme.white1,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.lightwhite,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                          hintText: "Modern House",
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  color: ColorTheme.lightwhite,
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10, right: 15),
                                child: Icon(Icons.search,
                                    color: ColorTheme.blueheading),
                              ),
                            ],
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 24, top: 15),
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
                                                30,
                                        color: ColorTheme.blueheading,
                                        fontWeight: FontWeight.w400)),
                            const WidgetSpan(
                                child: SizedBox(
                              width: 5,
                            )),
                            TextSpan(
                                text: "128",
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
                                text: "estate",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        fontSize:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        color: ColorTheme.blueheading,
                                        fontWeight: FontWeight.w400)),
                          ]),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 5,
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
                                    image: AssetImage(
                                        "images/FeatureList/dot1.png"),
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
                                    image: AssetImage(
                                        "images/FeatureList/dot3.png"),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24,top: 29),
                    child: Row(
                      children: [
                        Container(
                          width: 102,
                          height: 60,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorTheme.greenlight
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Center(
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                      color: ColorTheme.green
                                    ),
                                    child: Icon(Icons.close,color: ColorTheme.white,size: 15,),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("House",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w500,color: ColorTheme.black,fontSize: 10),),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 132,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: ColorTheme.greenlight
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Center(
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: ColorTheme.green
                                    ),
                                    child: Icon(Icons.close,color: ColorTheme.white,size: 15,),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("\$250 - \$450",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w500,color: ColorTheme.black,fontSize: 10),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 14, left: 10, right: 20,bottom: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height  / 1.5,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: imagesFeature.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AgentList(),));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 13, top: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 4.7,
                                width: 290,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: ColorTheme.white1),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 140,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  imagesFeature[index].image),
                                              fit: BoxFit.fill),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Image(
                                                image: AssetImage(
                                                    "images/HomeImages/heart.png"),
                                                height: 25,
                                                width: 25,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      13,
                                                  left: 12),
                                              child: Container(
                                                height: MediaQuery.of(context).size.height / 35,
                                                width: MediaQuery.of(context).size.width / 6.5,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(8),
                                                    color: ColorTheme.darkblue.withOpacity(0.67)
                                                        .withOpacity(0.8)),
                                                child: Center(
                                                  child: Text(
                                                      imagesFeature[index].name,
                                                      style: ThemeData.light()
                                                          .textTheme
                                                          .labelLarge!
                                                          .copyWith(
                                                              color: ColorTheme
                                                                  .white,
                                                              fontWeight:
                                                                  FontWeight.w500,
                                                              fontSize: 10)),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 18, left: 12, right: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("The Laurels Villa",
                                              style: ThemeData.light()
                                                  .textTheme
                                                  .labelLarge!
                                                  .copyWith(
                                                      color:
                                                          ColorTheme.blueheading,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                          const SizedBox(height: 8.5),
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
                                                        fontSize: 8,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: ColorTheme
                                                            .blueheading),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 8.5),
                                          Row(
                                            children: [
                                              const Image(
                                                image:
                                                    AssetImage("images/User.png"),
                                                height: 15,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text("Jakarta, Indonesia",
                                                    style: ThemeData.light()
                                                        .textTheme
                                                        .labelLarge!
                                                        .copyWith(
                                                            color: ColorTheme
                                                                .greyopasity,
                                                            fontSize: 8,
                                                            fontWeight:
                                                                FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    10),
                                            child: RichText(
                                                text: TextSpan(children: [
                                              TextSpan(
                                                  text: "\$ 290",
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16,
                                                          color: ColorTheme
                                                              .blueheading)),
                                              TextSpan(
                                                  text: "/month",
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                          fontSize: 9,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: ColorTheme
                                                              .blueheading))
                                            ])),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
