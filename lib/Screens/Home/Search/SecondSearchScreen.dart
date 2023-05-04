import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Search/ThirdSearchScreen.dart';

class SecondSearchScreen extends StatefulWidget {
  const SecondSearchScreen({Key? key}) : super(key: key);

  @override
  State<SecondSearchScreen> createState() => _SecondSearchScreenState();
}

class _SecondSearchScreenState extends State<SecondSearchScreen> {
  bool isSelected = false;
  List<HomeEstate> imagesss = [
    HomeEstate(
        image: 'images/ima.png',
        name: 'Bungalow House',
        icon: "images/HomeImages/heartgrey.png",
        price: "\$ 220",
        start: "4.9"),
    HomeEstate(
        image: 'images/image7.png',
        name: 'Bridgeland Modern House',
        icon: "images/HomeImages/heartgrey.png",
        price: "\$ 271",
        start: "3.9"),
    HomeEstate(
        image: 'images/image6.png',
        name: 'Mill Sper House',
        icon: "images/HomeImages/heartgrey.png",
        price: "\$ 260",
        start: "5"),
    HomeEstate(
        image: 'images/image10.png',
        name: 'Flower Heaven Appartment',
        icon: "images/HomeImages/heart.png",
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
  List<categoryName> categoryname = [
    categoryName(name: "All"),
    categoryName(name: "House"),
    categoryName(name: "Apartment"),
    categoryName(name: "House")
  ];
  int selectedIndex = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
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
                      Text(
                        "Search results",
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
                          onPressed: () {},
                          child: const Center(
                              child: Icon(
                            Icons.settings,
                            color: ColorTheme.blueheading,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20,
                      left: MediaQuery.of(context).size.width / 12,
                      right: MediaQuery.of(context).size.width / 12),
                  child: TextFormField(
                    cursorColor: ColorTheme.green,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      filled: true,
                      contentPadding:
                          const EdgeInsets.only(left: 22, top: 22, bottom: 22),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 1.5,
                          color: ColorTheme.green,
                        ),
                      ),
                      suffixIcon: const Icon(Icons.search,
                          color: ColorTheme.blueheading),
                      hintStyle: ThemeData.light()
                          .textTheme
                          .labelLarge!
                          .copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: ColorTheme.blueheading),
                      hintText: "Minix",
                    ),
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
                        return GestureDetector(
                          onTap: () {
                            showBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10.0)),
                                ),
                                builder: (BuildContext context) {
                                  return _showModelBottomsheet();
                                });
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
                                            child: Text("Jakarta, Indonesia",
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
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _showModelBottomsheet() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.2,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13, bottom: 30),
              child: Image(
                  image: const AssetImage("images/Slide.png"),
                  width: MediaQuery.of(context).size.width / 3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Filter",
                  style: ThemeData.light().textTheme.labelLarge!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: ColorTheme.blueheading),
                ),
                Container(
                  height: 50,
                  width: 88,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: ColorTheme.blue),
                  child: Center(
                      child: Text("Reset",
                          style: ThemeData.light().textTheme.labelLarge!.copyWith(
                              color: ColorTheme.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 10))),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 2.6, top: 40),
              child: Text(
                "Property type",
                style: ThemeData.light().textTheme.labelMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorTheme.blueheading),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryname.length,
                  itemBuilder: (context, index) {
                    return Padding(
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
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 38, right: MediaQuery.of(context).size.width / 1.5),
              child: Text(
                "Location",
                style: ThemeData.light().textTheme.labelLarge!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: ColorTheme.blueheading),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                cursorColor: ColorTheme.green,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.only(left: 22, top: 22, bottom: 22),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: ColorTheme.white1,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      width: 1.5,
                      color: ColorTheme.green,
                    ),
                  ),
                  suffixIcon:
                      const Icon(Icons.search, color: ColorTheme.blueheading),
                  prefixIcon: const Icon(
                    Icons.location_on,
                    color: ColorTheme.blueheading,
                  ),
                  hintStyle: ThemeData.light().textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: ColorTheme.blueheading),
                  hintText: "Semarang",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(
                            image: AssetImage("images/Map.png"), fit: BoxFit.cover)),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 8),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(ColorTheme.green),
                            shadowColor: MaterialStateProperty.all(ColorTheme.blue),

                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdeSearchScreen(),));
                          },
                          child: Text(
                            "Apply Filter",
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Stack(children: const [
                          Icon(Icons.location_on,size: 40,color: ColorTheme.darkblue),
                          Padding(
                            padding: EdgeInsets.only(top: 5,left: 9),
                            child: Image(image: AssetImage("images/Notification/notify3.png"),height: 20,width: 20,),
                          ),
                        ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
