import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';

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
    ImageHome(name: "Summer",sale: "Vacation",imaeg: "images/image2.png"),
    ImageHome(name: "Holiday", sale: "No offer!", imaeg: "images/image10.png")
  ];

  List<FeatureImages> imagesFeature = [
    FeatureImages(name: "Apartment", image: 'images/HomeImages/image26.png'),
    FeatureImages(image: "images/HomeImages/image25.png",name: "Villa"),
    FeatureImages(image: "images/HomeImages/image13.png",name: "House"),
  ];

  List<LocationImages> locImages = [
    LocationImages(image: "images/HomeImages/loc1.png", name: "bali"),
    LocationImages(image: "images/HomeImages/loc2.png", name: "jakarta"),
    LocationImages(image: "images/HomeImages/loc3.png", name: "Yogyakarta")
  ];

  List<preferableData> imagesss = [
    preferableData(image: 'images/ima.png', name: 'Apartment'),
    preferableData(image: 'images/image7.png', name: 'Villa'),
    preferableData(image: 'images/image6.png', name: 'House'),
    preferableData(image: 'images/image10.png', name: 'Cottage'),
    preferableData(image: 'images/image5.png', name: 'Apartment'),
    preferableData(image: 'images/image12.png', name: 'Villa'),
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
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 310,
                  width: 320 ,
                  child: const Image(
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
                        Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: ColorTheme.white1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Image(
                                  image: AssetImage("images/User.png"),
                                  height:
                                      15),
                              Text(
                                "Jakarta, Indonesia",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: ColorTheme.blueheading),
                              ),
                              const Icon(Icons.arrow_drop_down_outlined,
                                  color: ColorTheme.blueheading),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 3.2),
                            child: Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: ColorTheme.white1,
                                ),
                                child: const Image(
                                  image: AssetImage("images/Notification.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 30),
                          child: Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: ColorTheme.white1,
                              ),
                              child: const Image(
                                image: AssetImage("images/userelips.png"),
                                fit: BoxFit.cover,
                              )),
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: MediaQuery.of(context).size.height / 25,
                    ),
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
                    padding: const EdgeInsets.only(left: 24,right: 20,top: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height /15,
                      width: MediaQuery.of(context).size.width /1.1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryname.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index ;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height /15,
                                width: MediaQuery.of(context).size.width / 5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: selectedIndex == index ? ColorTheme.darkblue : ColorTheme.white1
                                ),
                                child: Center(
                                  child: Text(categoryname[index].name,
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                          color: selectedIndex == index ? ColorTheme.white : ColorTheme.blueheading,
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

                  Padding(padding: const EdgeInsets.only(top: 32,left: 10,right: 20),
                    child: Container(
                      height: 200 ,
                      child: ListView.builder(
                        itemCount: images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Padding(
                                padding:  const EdgeInsets.only(right: 13),
                                child: Container(
                                  height: 200,
                                  width: 270,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      image: DecorationImage(
                                          image: AssetImage(images[index].imaeg),fit: BoxFit.cover
                                      )
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 22,top: 44),
                                        child: Text(images[index].name,style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.white,fontSize: 18,fontWeight: FontWeight.w700),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 22),
                                        child: Text(images[index].sale,style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.white,fontSize: 18,fontWeight: FontWeight.w700),),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 22,top: 8),
                                        child: Text("All discount up to 60%",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.white,fontSize: 10,fontWeight: FontWeight.w400),),

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

                                  child: const Image(image: AssetImage('images/arrowhome.png')),
                                ),
                              )
                            ],
                          );
                      },),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 24,left: 24,right: 24),
                    child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "Featured Estate",style: ThemeData.light().textTheme.labelMedium!.copyWith(color:ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 18)),
                        WidgetSpan(child: SizedBox(width:MediaQuery.of(context).size.width /1.7)),
                        TextSpan(text: "view all",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.darkblue,fontSize: 12,fontWeight: FontWeight.w600))
                      ]
                    )),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 32,left: 10,right: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3.8,
                      child: ListView.builder(
                        itemCount: imagesFeature.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  const EdgeInsets.only(right: 13),
                            child: Container(
                              height: MediaQuery.of(context).size.height /3,
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
                                        borderRadius: BorderRadius.circular(25.0),
                                        image: DecorationImage(
                                          image: AssetImage(imagesFeature[index].image),fit: BoxFit.fill
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Image(image: AssetImage("images/HomeImages/heart.png"),height: 25,width:25,),
                                          ),
                                          Padding(
                                            padding:EdgeInsets.only(top: MediaQuery.of(context).size.height / 7.5,left: 12),
                                            child: Container(
                                              height: 27,
                                              width: 63,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: ColorTheme.darkblue
                                              ),
                                              child: Center(
                                                child: Text(imagesFeature[index].name,
                                                    style: ThemeData.light()
                                                        .textTheme
                                                        .labelLarge!
                                                        .copyWith(
                                                        color:  ColorTheme.white,
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 10)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18  ,left: 12,right: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Sky Dandelions ",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontSize: 12,fontWeight: FontWeight.w700)),
                                        Text("Apartment",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontSize: 12,fontWeight: FontWeight.w700)),
                                        const SizedBox(height: 8.5),
                                        Row(
                                          children: [
                                            const Icon(Icons.star,color: ColorTheme.staryellow,size: 12),
                                            Text("4.9",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontSize: 8,fontWeight: FontWeight.w700,color: ColorTheme.blueheading),),
                                          ],
                                        ),
                                        const SizedBox(height: 8.5),

                                        Row(
                                          children: [
                                            const Image(image: AssetImage("images/User.png"),height: 15,),

                                            Padding(
                                              padding: const EdgeInsets.only(left: 5),
                                              child: Text("Jakarta, Indonesia",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.greyopasity,fontSize: 8,fontWeight: FontWeight.w400)),
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 29),
                                        RichText(text: TextSpan(
                                          children: [
                                            TextSpan(text: "\$ 290",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600,fontSize: 16,color: ColorTheme.blueheading)),
                                            TextSpan(text: "/month",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 9,fontWeight: FontWeight.w500,color: ColorTheme.blueheading))
                                          ]
                                        ))

                                      ],
                                    ),
                                  )
                                ],
                              ),

                            ),
                          );
                        },),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32,left: 24,right: 24),
                    child: RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "Top Locations",style: ThemeData.light().textTheme.labelMedium!.copyWith(color:ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 18)),
                          WidgetSpan(child: SizedBox(width:MediaQuery.of(context).size.width /1.7)),
                          TextSpan(text: "explore",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.darkblue,fontSize: 12,fontWeight: FontWeight.w600))
                        ]
                    )),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 32,left: 20,right: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 12,
                      child: ListView.builder(
                        itemCount: locImages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  const EdgeInsets.only(right: 25),
                            child: Container(
                              height: MediaQuery.of(context).size.height /4,
                              width: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: ColorTheme.white1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      image: DecorationImage(
                                        image: AssetImage(locImages[index].image),fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  Text(locImages[index].name,style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.darkblue,fontSize: 12,fontWeight: FontWeight.w500),)
                                ],
                              )

                            ),
                          );
                        },),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32,left: 24,right: 24),
                    child: RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "Top Estate Agent",style: ThemeData.light().textTheme.labelMedium!.copyWith(color:ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 18)),
                          WidgetSpan(child: SizedBox(width:MediaQuery.of(context).size.width /1.8)),
                          TextSpan(text: "explore",style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.darkblue,fontSize: 12,fontWeight: FontWeight.w600))
                        ]
                    )),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 32,left: 20,right: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 8,
                      child: ListView.builder(
                        itemCount: locImages.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  const EdgeInsets.only(right: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      image: DecorationImage(
                                          image: AssetImage(locImages[index].image),fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                Text(locImages[index].name,style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.darkblue,fontSize: 12,fontWeight: FontWeight.w500),)
                              ],
                            ),
                          );
                        },),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32,left: 24,right: 24),
                    child: Text("Explore Nearby Estates",style: ThemeData.light().textTheme.labelMedium!.copyWith(color:ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 18)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 19,
                        left: MediaQuery.of(context).size.width / 20,
                        right: MediaQuery.of(context).size.width / 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 12,
                            mainAxisExtent: MediaQuery.of(context).size.height / 3.5,
                            childAspectRatio:
                            MediaQuery.of(context).size.height / 900,
                            mainAxisSpacing: 14,
                            crossAxisCount: 2),
                        itemCount: imagesss.length,
                        itemBuilder: (context, index) {
                          final select = imagesss[index];
                          return Card(
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
                                                5.6,
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
                                            )),
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
                                              color: ColorTheme.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Image(
                                      image:
                                      AssetImage("images/Radio.png"),
                                      height: 25,
                                      width: 25,
                                    ),
                                  )
                                ],
                              ));
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
