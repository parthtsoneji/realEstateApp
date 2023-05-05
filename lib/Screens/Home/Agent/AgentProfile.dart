import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Notification/NotificationList.dart';

class AgentProfileDetail extends StatefulWidget {
  const AgentProfileDetail({Key? key}) : super(key: key);

  @override
  State<AgentProfileDetail> createState() => _AgentProfileDetailState();
}

class _AgentProfileDetailState extends State<AgentProfileDetail> {

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
    HomeEstate(
        image: 'images/image10.png',
        name: 'Wings Tower',
        icon: "images/HomeImages/heartgrey.png",
        price: "\$ 280",
        start: "3"),
    HomeEstate(
        image: 'images/image5.png',
        name: 'Sky Dandelions',
        icon: "images/HomeImages/heartgrey.png",
        price: "\$ 300",
        start: "3.2"),
    HomeEstate(
        image: 'images/image12.png',
        name: 'Bungalow House',
        icon: "images/HomeImages/heartgrey.png",
        price: "\$ 320",
        start: "4.5"),
  ];
  bool isExpanded = false;
  bool isBuyerSelected = true;
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
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
                        Text("Profile",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize:  MediaQuery.of(context).size.height /48,fontWeight: FontWeight.w700),),
                        CircleAvatar(
                          radius: 25,
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
                    padding: const EdgeInsets.only(top: 34),
                    child: Text("Amanda",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: MediaQuery.of(context).size.height /48,fontWeight: FontWeight.w700),),
                  ),
                  Text("amanda.trust@email.com",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.greyopasity,fontSize: MediaQuery.of(context).size.height /70,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: MediaQuery.of(context).size.height / 15,
                          backgroundColor: ColorTheme.transparent,
                          child: const Image(image: AssetImage("images/Agent/Agent1.png"),
                          ),),
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 10.7,left: MediaQuery.of(context).size.width / 5.8),
                          child: Container(
                            height: 25,
                            width: 27,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: ColorTheme.green),
                            child: Center(child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(text: "#", style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.white,fontSize: 8,fontWeight: FontWeight.w600)),
                                    TextSpan(text: "1",style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.white,fontWeight: FontWeight.w600))
                                  ]
                              ),
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 27,left: 24,right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 70,
                          width: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorTheme.darkblue.withOpacity(0.11)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("5.0",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w700,color: ColorTheme.blueheading,fontSize: 14),),
                              RatingBarIndicator(
                                itemCount: 5,
                                rating: 5,
                                itemSize: 15,
                                itemBuilder: (context, index) => Icon(Icons.star,size: 16,color: ColorTheme.staryellow),)
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorTheme.locationcolor
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("235",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w700,color: ColorTheme.blueheading,fontSize: 14),),
                              SizedBox(height: 7),
                              Text("Reviews",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w500,color: ColorTheme.lightdark,fontSize: 10),),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 102,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorTheme.locationcolor
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("112",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w700,color: ColorTheme.blueheading,fontSize: 14),),
                              SizedBox(height: 7),
                              Text("Sold",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w500,color: ColorTheme.lightdark,fontSize: 10),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 25,
                        left: 30,
                        right: 30),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: ColorTheme.white1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isBuyerSelected = true;
                              });
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 18,
                              width: MediaQuery.of(context).size.width / 2.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: isBuyerSelected
                                    ? ColorTheme.white
                                    : ColorTheme.white1,
                              ),
                              child: Center(
                                  child: Text("Listings",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: isBuyerSelected
                                              ? ColorTheme.darkblue
                                              : ColorTheme.lightwhite))),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isBuyerSelected = false;
                              });
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 18,
                              width: MediaQuery.of(context).size.width / 2.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: !isBuyerSelected
                                    ? ColorTheme.white
                                    : ColorTheme.white1,
                              ),
                              child: Center(
                                child: Text(
                                  "Sold",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: !isBuyerSelected
                                          ? ColorTheme.darkblue
                                          : ColorTheme.lightwhite),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,right: 24,top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "140",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                    fontSize:
                                    MediaQuery.of(context).size.height  /30,
                                    color: ColorTheme.blueheading,
                                    fontWeight: FontWeight.w700)),
                            const WidgetSpan(
                                child: SizedBox(
                                  width: 5,
                                )),
                            TextSpan(
                                text:
                                "listings",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontSize: MediaQuery.of(context).size.height /30,
                                    color: ColorTheme.blueheading,
                                    fontWeight: FontWeight.w500)),
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
                                        image: AssetImage("images/FeatureList/dot1.png"),
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
                                        image: AssetImage("images/FeatureList/dot3.png"),
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
                          return GestureDetector(
                            onTap: () {
                            },
                            child: Card(
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
                                                      color: ColorTheme.darkblue.withOpacity(0.67)),
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
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 1.25 , bottom: 49),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),));
                    },
                    child: Text(
                      "Start Chat",
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
        ),
      ),
    );
  }
}
