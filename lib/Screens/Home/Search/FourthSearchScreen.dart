import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Search/Deatil/FirstDetailsScreen.dart';

class FourthSearchScreen extends StatefulWidget {
  const FourthSearchScreen({Key? key}) : super(key: key);

  @override
  State<FourthSearchScreen> createState() => _FourthSearchScreenState();
}

class _FourthSearchScreenState extends State<FourthSearchScreen> {
  final globalKey = GlobalKey();
  bool isSelected = false;
  int index = 0;
  List<SearchList> imageSearch = [
    SearchList("Bridgeland Modern House", "images/Search/search1.png",  "images/HomeImages/heartgrey.png", "260"),
    SearchList("Wayside Modern House", "images/Search/search2.png",  "images/HomeImages/heart.png", "220"),
    SearchList("Bridgeland Modern House", "images/Search/search3.png",  "images/HomeImages/heartgrey.png", "245"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: globalKey,
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
                      contentPadding: EdgeInsets.only(left: 22,top: 22,bottom: 22),
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
                      hintText: "Modern House",
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
                              text: "128  ",
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
                  padding:
                  const EdgeInsets.only(top: 32, left: 24, right: 24),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 1.2,
                    child: ListView.builder(
                      itemCount: imageSearch.length,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FirstDetailScreen(),));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 4,
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
                                                imageSearch[index].image),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Image(
                                              image: AssetImage(
                                                  imageSearch[index].icon),
                                              height: 25,
                                              width: 25,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                    8.5,
                                                left: 12),
                                            child: Container(
                                              height: 27,
                                              width: 63,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  color: ColorTheme.darkblue.withOpacity(0.67)),
                                              child: Center(
                                                child: Text(
                                                    "House",
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
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height  /20,
                                          width: 80,
                                          child: Text(imageSearch[index].name,
                                              style: ThemeData.light()
                                                  .textTheme
                                                  .labelLarge!
                                                  .copyWith(
                                                  color:
                                                  ColorTheme.blueheading,
                                                  fontSize: 12,
                                                  fontWeight:
                                                  FontWeight.w700)),
                                        ),
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
                                              child: Text("JSemarang, Indonesia",
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                      color: ColorTheme
                                                          .lightdark,
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
                                                  text: "\$" + imageSearch[index].price,
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
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
