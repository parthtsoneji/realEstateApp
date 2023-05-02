import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Feature/FourthFeatureList.dart';

class TopLocationFeature extends StatefulWidget {
  const TopLocationFeature({Key? key}) : super(key: key);

  @override
  State<TopLocationFeature> createState() => _TopLocationFeatureState();
}

class _TopLocationFeatureState extends State<TopLocationFeature> {

  List<FeatureListImage> images = [
    FeatureListImage(image: 'images/FeatureList/image5.png', name: 'Bali',number: "1"),
    FeatureListImage(image: 'images/FeatureList/image6.png', name: 'Jakarta',number: '2'),
    FeatureListImage(image: 'images/FeatureList/image7.png', name: 'Maldives',number: "3"),
    FeatureListImage(image: 'images/FeatureList/image9.png', name: 'Semarang',number: "4"),
    FeatureListImage(image: 'images/FeatureList/image10.png', name: 'Denmark',number: "5"),
    FeatureListImage(image: 'images/FeatureList/image11.png', name: 'diu',number: "6"),
  ];
  int index = 0;
  List<bool> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 24, left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Top Location",
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
                              "\nFind the best recommendations place to live.",
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
                      top: 10,bottom: 20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 12,
                          mainAxisExtent: MediaQuery.of(context).size.height / 3.1,
                          childAspectRatio:
                          MediaQuery.of(context).size.height / 900,
                          mainAxisSpacing: 14,
                          crossAxisCount: 2),
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        final select = images[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => FourthLocationList(),));
                          },
                          child: Card(
                            elevation: 0.1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              color: ColorTheme.white1,
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                .size
                                                .width /
                                                70,
                                            right: MediaQuery.of(context)
                                                .size
                                                .width /
                                                70,
                                            top: MediaQuery.of(context)
                                                .size
                                                .height /
                                                100,
                                            bottom: 20),
                                        child: Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                4.2,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                              image: DecorationImage(
                                                image: AssetImage(select.image),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                .size
                                                .width /
                                                30),
                                        child: Text(
                                          select.name,
                                          style: ThemeData.light()
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: ColorTheme.blueheading),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(18.0),
                                    child: Container(
                                      height: 25,
                                      width: 27,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: ColorTheme.green),
                                      child: Center(child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(text: "#", style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.white,fontSize: 8,fontWeight: FontWeight.w600)),
                                            TextSpan(text: select.number,style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.white,fontWeight: FontWeight.w600))
                                          ]
                                        ),
                                      ),),
                                    ),
                                  )
                                ],
                              )),
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
