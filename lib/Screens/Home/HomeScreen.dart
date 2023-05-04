import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/HomeDetailPages/PromotionScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<categoryName> categoryname = [
    categoryName(name: "All"),
    categoryName(name: "House"),
    categoryName(name: "Apartment"),
    categoryName(name: "House")
  ];

  List<ImageHome> images = [
    ImageHome(name: "Halloween", sale: "Sale!", imaeg: "images/image5.png"),
    ImageHome(name: "Summer", sale: "Vacation", imaeg: "images/image2.png"),
    ImageHome(name: "Holiday", sale: "No offer!", imaeg: "images/image10.png")
  ];

  List<FeatureImages> imagesFeature = [
    FeatureImages(name: "Apartment", image: 'images/HomeImages/image26.png'),
    FeatureImages(image: "images/HomeImages/image25.png", name: "Villa"),
    FeatureImages(image: "images/HomeImages/image13.png", name: "House"),
  ];

  List<LocationImages> locImages = [
    LocationImages(image: "images/HomeImages/loc1.png", name: "bali"),
    LocationImages(image: "images/HomeImages/loc2.png", name: "jakarta"),
    LocationImages(image: "images/HomeImages/loc3.png", name: "Yogyakarta")
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

  int selectedIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 310,
                  width: 320,
                  child: Image(
                    image: AssetImage('images/homeelips.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //location, notification & AccountButton
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 15, top: 24),
                    child: Row(
                      children: [
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
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: ColorTheme.white1),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Image(
                                    image: AssetImage("images/User.png"),
                                    height: 13),
                                const SizedBox(width: 3),
                                Text(
                                  "Jakarta, Indonesia",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w500,
                                          color: ColorTheme.blueheading),
                                ),
                                const SizedBox(width: 3),
                                const Icon(Icons.arrow_drop_down_outlined,
                                    color: ColorTheme.blueheading),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 3.5),
                            child: const CircleAvatar(
                              radius: 25,
                              child: Image(
                                image: AssetImage("images/Notification.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 30),
                          child: const CircleAvatar(
                            radius: 25,
                            backgroundColor: ColorTheme.white1,
                            child: Image(
                              image: AssetImage("images/userelips.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        left: 30, top: MediaQuery.of(context).size.height / 30),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Hey,",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: ColorTheme.blueheading),
                          ),
                          const WidgetSpan(child: SizedBox(width: 10)),
                          TextSpan(
                            text: "Jonathan!",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: ColorTheme.darkblue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Let's start exploring",
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          color: ColorTheme.blueheading,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                  ),

                  // Search text field
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: MediaQuery.of(context).size.height / 25,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorTheme.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ColorTheme.white1,
                          prefixIcon: const Icon(Icons.search,
                              color: ColorTheme.darkblue, size: 30),
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
                          hintText: "Search House, Apartment, etc",
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  width: 1.0,
                                  color: ColorTheme.lightwhite,
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10, right: 15),
                                child: Icon(Icons.mic,
                                    color: ColorTheme.lightwhite),
                              ),
                            ],
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ),
                  ),

                  //List View for horizontale details
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 20, top: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryname.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: selectedIndex == index
                                        ? ColorTheme.darkblue
                                        : ColorTheme.white1),
                                child: Center(
                                  child: Text(categoryname[index].name,
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                              color: selectedIndex == index
                                                  ? ColorTheme.white
                                                  : ColorTheme.blueheading,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10)),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding:
                        const EdgeInsets.only(top: 32, left: 10, right: 20),
                    child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                        itemCount: images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const PromotionScreeen(),));
                            },
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: Container(
                                    height: 200,
                                    width: 270,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25.0),
                                        image: DecorationImage(
                                            image:
                                                AssetImage(images[index].imaeg),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 22, top: 44),
                                          child: Text(
                                            images[index].name,
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
                                          padding:
                                              const EdgeInsets.only(left: 22),
                                          child: Text(
                                            images[index].sale,
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
                                          padding: const EdgeInsets.only(
                                              left: 22, top: 8),
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
                                Align(
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
                                        image:
                                            AssetImage('images/arrowhome.png')),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 24, right: 10),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Featured Estate",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: ColorTheme.blueheading,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18)),
                      WidgetSpan(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3)),
                      TextSpan(
                          text: "view all",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.darkblue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600))
                    ])),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 32, left: 10, right: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3.8,
                      child: ListView.builder(
                        itemCount: imagesFeature.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 13),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 3,
                              width: 268,
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
                                                    7.5,
                                                left: 12),
                                            child: Container(
                                              height: 27,
                                              width: 63,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: ColorTheme.darkblue),
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
                                        Text("Sky Dandelions ",
                                            style: ThemeData.light()
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                                    color:
                                                        ColorTheme.blueheading,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                        Text("Apartment",
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
                                        const SizedBox(height: 29),
                                        RichText(
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
                                        ]))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 32, left: 24, right: 24),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Top Locations",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: ColorTheme.blueheading,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18)),
                      WidgetSpan(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3)),
                      TextSpan(
                          text: "explore",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.darkblue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600))
                    ])),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 32, left: 20, right: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                      child: ListView.builder(
                        itemCount: locImages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Container(
                                height: MediaQuery.of(context).size.height / 4,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: ColorTheme.white1),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    locImages[index].image),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              50),
                                      Text(
                                        locImages[index].name,
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                color: ColorTheme.darkblue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                )),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 32, left: 24, right: 24),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Top Estate Agent",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: ColorTheme.blueheading,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18)),
                      WidgetSpan(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width / 2.3)),
                      TextSpan(
                          text: "explore",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.darkblue,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600))
                    ])),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 32, left: 20, right: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 6.3,
                      child: ListView.builder(
                        itemCount: locImages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 39,
                                  backgroundColor: ColorTheme.white1,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height / 4,
                                    width: MediaQuery.of(context).size.width / 3,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                locImages[index].image),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Text(
                                  locImages[index].name,
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          color: ColorTheme.darkblue,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          );
                        },
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _locationBottomSheet() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.7,
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
              padding: const EdgeInsets.only(top: 49, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select Location",
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
                        color: ColorTheme.blueheading),
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
            Container(
              height: MediaQuery.of(context).size.height / 11,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: ColorTheme.darkblue,
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
                          color: ColorTheme.white.withOpacity(0.5)),
                      child: const Icon(Icons.location_on, color: ColorTheme.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,top: MediaQuery.of(context).size.height / 50),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Srengseng, Kembangan, West Jakarta",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        color: ColorTheme.white,
                                        fontSize: MediaQuery.of(context).size.width / 30,
                                        fontWeight: FontWeight.w400)),
                            Text("City, Jakarta 11630",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        color: ColorTheme.white,
                                        fontSize: MediaQuery.of(context).size.width / 30,
                                        fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                  ],
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
                      child: const Icon(Icons.location_on_outlined, color: ColorTheme.greyopasity),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,top: MediaQuery.of(context).size.height / 50),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Petompon, Kec. Gajahmungkur, Kota",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    color: ColorTheme.greyopasity,
                                    fontSize: MediaQuery.of(context).size.width / 30,
                                    fontWeight: FontWeight.w400)),
                            Text("Semarang, Jawa Tengah 50232",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    color: ColorTheme.greyopasity,
                                    fontSize: MediaQuery.of(context).size.width / 30,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 10),
              child: Center(
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
                    },
                    child: Text(
                      "Choose Location",
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
