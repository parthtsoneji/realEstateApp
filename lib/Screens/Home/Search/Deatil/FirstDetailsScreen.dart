import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Search/Deatil/ViewOnMapDetail.dart';

class FirstDetailScreen extends StatefulWidget {
  const FirstDetailScreen({Key? key}) : super(key: key);

  @override
  State<FirstDetailScreen> createState() => _FirstDetailScreenState();
}

class _FirstDetailScreenState extends State<FirstDetailScreen> {
  List<FeatureListImage> secondList = [
    FeatureListImage(
        image: "images/FirstDetail/bath1.png", number: "2", name: 'Bedroom'),
    FeatureListImage(
        image: "images/FirstDetail/bath2.png", name: "Bathroom", number: "1"),
    FeatureListImage(
        image: "images/FirstDetail/bath3.png", name: "Water", number: "3")
  ];
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

  List house = ["2 Hospital", "4 Gas Station", "2 Schools"];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
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
                      padding:
                      const EdgeInsets.only(top: 24, left: 24, right: 24),
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
                                          image: AssetImage(
                                              "images/HomeImages/heart.png"),
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
                                    const SizedBox(height: 5),
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "images/Search/search6.png"))),
                                    ),
                                    const SizedBox(height: 5),
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
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Wings Tower",
                        style: ThemeData.light().textTheme.labelMedium!.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: ColorTheme.blueheading),
                      ),
                      Text("\$ 220",
                          style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: ColorTheme.blueheading),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 15),
                  child: Row(
                    children: [
                      const Icon(Icons.location_on,
                          color: ColorTheme.blueheading, size: 15),
                      const SizedBox(width: 7),
                      Text("Jakarta, Indonesia",
                        style: ThemeData.light().textTheme.labelLarge!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorTheme.lightdark),
                      ),
                      const Expanded(child: SizedBox()),
                      Text("per month",
                        style: ThemeData.light().textTheme.labelLarge!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorTheme.lightdark),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
                  child: Row(
                    children: [
                      Container(
                        width: 72,
                        height: 47,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorTheme.green),
                        child: Center(
                          child: Text(
                            "Rent",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                color: ColorTheme.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 72,
                        height: 47,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorTheme.white1),
                        child: Center(
                          child: Text(
                            "Buy",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                color: ColorTheme.blueheading,
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(55.0)),
                              ),
                              builder: (context) => _locationBottomSheet());
                          },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: ColorTheme.white1),
                          child: const Center(
                            child: Icon(Icons.rotate_90_degrees_ccw,
                                color: ColorTheme.blueheading, size: 22),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 0.2,
                    color: ColorTheme.locationcolor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorTheme.white1),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
                        children: [
                          const Image(
                              image:
                              AssetImage("images/Notification/notify8.png"),
                              width: 38,
                              height: 38),
                          const SizedBox(width: 24),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Anderson",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    color: ColorTheme.blueheading,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                "Real Estate Agent",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    color: ColorTheme.lightdark,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const Expanded(child: SizedBox()),
                          const Icon(
                            Icons.chat,
                            size: 20,
                            color: ColorTheme.blueheading,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 20, bottom: 20),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: secondList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final select = secondList[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: ColorTheme.white1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage(select.image)),
                                const SizedBox(width: 4),
                                Text(
                                  select.number,
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorTheme.lightdark),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  select.name,
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorTheme.lightdark),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Location & Public Facilities",
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(
                        color: ColorTheme.blueheading,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, right: 24, left: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: ColorTheme.white1,
                        child: Icon(
                          Icons.location_on_outlined,
                          color: ColorTheme.lightdark,
                          size: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24, left: 15, top: 10),
                        child: SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                              "St. Cikoko Timur, Kec. Pancoran, Jakarta Selatan, Indonesia 12770",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: ColorTheme.lightdark,
                                  fontSize: 12)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorTheme.white,
                        border: Border.all(width: 1, color: ColorTheme.white2)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on,
                              color: ColorTheme.darkblue, size: 25),
                          const SizedBox(width: 34),
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "2.5 km",
                                    style: ThemeData.light()
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                        color: ColorTheme.blueheading,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "from your location",
                                    style: ThemeData.light()
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                        color: ColorTheme.lightdark,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700)),
                              ])),
                          const Expanded(child: SizedBox()),
                          const Icon(
                            Icons.arrow_drop_down_sharp,
                            color: ColorTheme.blueheading,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 20),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: house.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final select = house[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: ColorTheme.white1),
                            child: Center(
                              child: Text(
                                select,
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: ColorTheme.lightdark),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/FirstDetail/location1.png"
                            ),fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cost of Living",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 18,fontWeight: FontWeight.w700,color: ColorTheme.blueheading),),
                      Text("view details",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 10,fontWeight: FontWeight.w600,color: ColorTheme.blue),),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorTheme.white1
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16,top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "\$ 830",
                                  style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700
                                  ),
                                ),
                                TextSpan(
                                  text: "/ month *",
                                  style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontSize: 10,fontWeight: FontWeight.w600
                                  ),
                                ),
                              ]
                          ),),
                          Text("*From average citizen spend around this location",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.lightdark,fontSize: 9,fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24,top: 20),
                  child: Text("Reviews",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 18,fontWeight: FontWeight.w700,color: ColorTheme.blueheading),),
                ),
                Padding(padding: const EdgeInsets.only(left: 24,right: 24,top: 20),
                  child: Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorTheme.blue.withOpacity(0.69)
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 16,right: 16),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: ColorTheme.blue),
                              child: const Icon(Icons.star,color: ColorTheme.staryellow,size: 20),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16,left: 14),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                      const SizedBox(width: 3),
                                      const Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                      const SizedBox(width: 3),
                                      const Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                      const SizedBox(width: 3),
                                      const Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                      const SizedBox(width: 3),
                                      const Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                      const SizedBox(width: 3),
                                      Text("4.9",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 18,color: ColorTheme.blueheading),)
                                    ],
                                  ),
                                ),
                                Text("From 112 reviewers",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w400,fontSize: 9,color: ColorTheme.lightdark),)

                              ],
                            ),
                            const Expanded(child: SizedBox()),
                            const Image(image: AssetImage("images/FirstDetail/Review.png"))
                          ],
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 24,right: 24),
                  child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorTheme.white1
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            child: Image(image: AssetImage("images/Notification/notify2.png")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12,left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Kurt Mullins",
                                        style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 12),
                                      ),
                                      const WidgetSpan(child: SizedBox(width: 60)),
                                      WidgetSpan(child: Row(
                                        children: const [
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                          SizedBox(width: 2),
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                          SizedBox(width: 2),
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                          SizedBox(width: 2),
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                          SizedBox(width: 2),
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                        ],
                                      ))
                                    ]
                                ),),
                                SizedBox(height: 40,
                                  width: MediaQuery.of(context).size.width / 1.7,
                                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 10,fontWeight: FontWeight.w400,color: ColorTheme.lightdark),),
                                ),
                                Text("8 Days ago",style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.lightwhite,fontSize: 8,fontWeight: FontWeight.w400),),

                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 24,right: 24),
                  child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorTheme.white1
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            child: Image(image: AssetImage("images/Notification/notify3.png")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Kay Swanson",
                                        style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 12),
                                      ),
                                      const WidgetSpan(child: SizedBox(width: 70)),
                                      WidgetSpan(child: Row(
                                        children: const [
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                          SizedBox(width: 2),
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                          SizedBox(width: 2),
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                          SizedBox(width: 2),
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                          SizedBox(width: 2),
                                          Icon(Icons.star,color: ColorTheme.staryellow,size: 10),
                                        ],
                                      ))
                                    ]
                                ),),
                                SizedBox(height: 40,
                                  width: MediaQuery.of(context).size.width / 1.7,
                                  child: Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperia.",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 10,fontWeight: FontWeight.w400,color: ColorTheme.lightdark),),
                                ),
                                Text("12 Days ago",style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.lightwhite,fontSize: 8,fontWeight: FontWeight.w400),),

                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 24,right: 24),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorTheme.white1
                    ),
                    child: Center(
                      child: Text("View all reviews",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blue,fontWeight: FontWeight.w600,fontSize: 10),),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 32, left: 24, right: 24),
                  child: Text("Explore Nearby Estates",
                      style: ThemeData.light()
                          .textTheme
                          .labelMedium!
                          .copyWith(
                          color: ColorTheme.blueheading,
                          fontWeight: FontWeight.w700,
                          fontSize: 18)),
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
                          MediaQuery.of(context).size.height / 2.7,
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
                                                  color: ColorTheme.darkblue
                                                      .withOpacity(0.67)),
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
                                                          fontSize: 9)),
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
                                                          fontSize: 6)),
                                                ]),
                                              ),
                                            ),
                                          ),
                                        ),
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
                                          child: Text("Jakarta, \n Indonesia",
                                              style: ThemeData.light()
                                                  .textTheme
                                                  .labelLarge!
                                                  .copyWith(
                                                  color: ColorTheme
                                                      .lightwhite,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 1.4,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all(ColorTheme.green),
                  ),
                  onPressed: () {
                  },
                  child: Text(
                    "Buy Now",
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
    );
  }
  Widget _locationBottomSheet() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.7,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Image(
                  image: const AssetImage("images/Slide.png"),
                  width: MediaQuery.of(context).size.width / 3),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Location Distance",
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(
                        color: ColorTheme.blueheading,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  Container(
                    height: 50,
                    width: 79,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: ColorTheme.green),
                    child: Center(
                        child: Text(
                          "Edit",
                          style: ThemeData.light().textTheme.labelLarge!.copyWith(
                              color: ColorTheme.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 10),
                        )),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ViewOnMapDetail(),));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: ColorTheme.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: ColorTheme.locationcolor),
                        child: const Icon(Icons.location_on, color: ColorTheme.blue),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15,top: MediaQuery.of(context).size.height / 35),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "2.5 km",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                            color: ColorTheme.blueheading,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700)
                                    ),
                                    TextSpan(
                                        text: "   from Srengseng, Kembangan, ",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                            color: ColorTheme.lightdark,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400)
                                    ),
                                  ]
                                ),
                              ),
                              Text("West Jakarta City, Jakarta 11630",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                      color: ColorTheme.lightdark,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 80),
            Container(
              height: MediaQuery.of(context).size.height / 11,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: ColorTheme.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: ColorTheme.locationcolor),
                      child: const Icon(Icons.location_on, color: ColorTheme.blue),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,top: MediaQuery.of(context).size.height / 35),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "18.2 km",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                            color: ColorTheme.blueheading,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700)
                                    ),
                                    TextSpan(
                                        text: "   from Petompon, Kota  ",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                            color: ColorTheme.lightdark,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400)
                                    ),
                                  ]
                              ),
                            ),
                            Text("Semarang, Jawa Tengah 50232",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    color: ColorTheme.lightdark,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
