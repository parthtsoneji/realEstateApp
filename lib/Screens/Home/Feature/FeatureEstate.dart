import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Feature/SecondFeatureList.dart';

class FeatureEstate extends StatefulWidget {
  const FeatureEstate({Key? key}) : super(key: key);

  @override
  State<FeatureEstate> createState() => _FeatureEstateState();
}

class _FeatureEstateState extends State<FeatureEstate> {

  bool isSelected = true;
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                padding: const EdgeInsets.only(left: 12, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width / 1.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                          image: const DecorationImage(
                              image: AssetImage("images/FeatureList/image1.png"),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 5.7,
                            width: MediaQuery.of(context).size.width / 2.7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "images/FeatureList/image2.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 5.7,
                              width: MediaQuery.of(context).size.width / 2.7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "images/FeatureList/image3.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 24),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Feature Estate",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.height / 25,
                                    color: ColorTheme.blueheading,
                                    fontWeight: FontWeight.w700)),
                        TextSpan(
                            text:
                                "\nOur recommended real estates exclusive for you.",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.height / 60,
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
                    borderRadius: BorderRadius.circular(10.0),
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
                      hintStyle: ThemeData.light().textTheme.labelLarge!.copyWith(
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
                              width: 0.3,
                              color: ColorTheme.lightwhite,
                              margin:
                                  const EdgeInsets.only(left: 10.0, right: 10.0),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 15),
                            child: Icon(Icons.mic, color: ColorTheme.lightwhite),
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
                padding: const EdgeInsets.only(left: 24,right: 24,top: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "70",
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
                            "estate",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                fontSize: MediaQuery.of(context).size.height /30,
                                color: ColorTheme.blueheading,
                                fontWeight: FontWeight.w300)),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondFeatureList(),));
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
      ),
    );
  }
}
