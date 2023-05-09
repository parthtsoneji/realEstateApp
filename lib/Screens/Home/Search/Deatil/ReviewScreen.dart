import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Search/Deatil/SliderImageScreen.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  List<categoryName> categoryname = [
    categoryName(name: "All"),
    categoryName(name: "1"),
    categoryName(name: "2"),
    categoryName(name: "3")
  ];
  int selectedIndex = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, left: 24,right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24),
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
                        "Reviews",
                        style: ThemeData.light()
                            .textTheme
                            .labelLarge!
                            .copyWith(
                            color: ColorTheme.blueheading,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: ColorTheme.transparent,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorTheme.white1
                  ),
                    child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage("images/ima.png"),fit: BoxFit.cover
                              )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                    padding:
                                    EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 16,
                                      backgroundColor:
                                      Colors.transparent,
                                      child: Image(
                                        image:
                                        AssetImage("images/HomeImages/heartgrey.png"),
                                        height: 100,
                                      ),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context)
                                          .size
                                          .height /
                                          14,
                                      left: 12),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height / 30,
                                    width: MediaQuery.of(context).size.width / 8,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(
                                            8),
                                        color: ColorTheme.darkblue
                                            .withOpacity(0.69)),
                                    child: Center(
                                      child: Text("Apartment",
                                          style: ThemeData.light()
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                              color: ColorTheme
                                                  .white,
                                              fontWeight:
                                              FontWeight
                                                  .w500,
                                              fontSize: MediaQuery.of(context).size.width / 50)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 3.52,
                              width: 109,
                              child: Column(
                                children: [
                                  Text("Sky Dandelions Apartment",
                                    style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 15,color: ColorTheme.blueheading),),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      const SizedBox(height: 10),
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
                                                fontSize: 10,
                                                fontWeight:
                                                FontWeight.w700,
                                                color: ColorTheme
                                                    .blueheading),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      const Image(
                                        image: AssetImage(
                                            "images/User.png"),
                                        height: 20,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5),
                                        child: Text(
                                            "Jakarta, Indonesia",
                                            style: ThemeData.light()
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                                color: ColorTheme
                                                    .lightdark,
                                                fontSize: 10,
                                                fontWeight:
                                                FontWeight
                                                    .w400)),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height:
                              MediaQuery.of(context).size.height / 15,
                              width:
                              MediaQuery.of(context).size.width / 5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: selectedIndex == index
                                      ? ColorTheme.darkblue
                                      : ColorTheme.white1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.star,color: ColorTheme.staryellow,size: 15,),
                                  const SizedBox(width: 8),
                                  Text(categoryname[index].name,
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                          color: selectedIndex == index
                                              ? ColorTheme.white
                                              : ColorTheme.blueheading,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10)),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 20),
                  child: Text("User reviews",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 18,fontWeight: FontWeight.w700,color: ColorTheme.blueheading),),
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
                            child: Image(image: AssetImage("images/Notification/notify6.png")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  children: [
                                    Text("Kurt Mullins ",
                                      style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 12),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width / 3),
                                    Row(
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
                                      ],)
                                  ],
                                ),
                                const SizedBox(height: 8),
                                SizedBox(height: 40,
                                  width: MediaQuery.of(context).size.width / 1.7,
                                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 10,fontWeight: FontWeight.w400,color: ColorTheme.lightdark),),
                                ),
                                Text("8 Days ago",style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.lightwhite,fontSize: 8,fontWeight: FontWeight.w400),),

                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SliderImageScreen(),));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,left: 24,right: 24),
                    child: Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorTheme.white1
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 25,
                                child: Image(image: AssetImage("images/Notification/notify7.png")),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    children: [
                                      Text("Samuel Ella",
                                        style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 12),
                                      ),
                                      SizedBox(width: MediaQuery.of(context).size.width / 3),
                                      Row(
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
                                        ],)
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(height: 40,
                                    width: MediaQuery.of(context).size.width / 1.7,
                                    child: Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperia.",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: 10,fontWeight: FontWeight.w400,color: ColorTheme.lightdark),),
                                  ),
                                  Row(
                                    children: [
                                      const Image(image: AssetImage("images/Notification/notifi3.png")),
                                      const SizedBox(width: 5),
                                      const Image(image: AssetImage("images/Notification/notifi2.png")),
                                      const SizedBox(width: 5),
                                      const Image(image: AssetImage("images/Notification/notifi1.png")),
                                    ],
                                  ),
                                  const SizedBox(height: 5),


                                  Text("12 Days ago",style: ThemeData.light().textTheme.labelSmall!.copyWith(color: ColorTheme.lightwhite,fontSize: 8,fontWeight: FontWeight.w400),),

                                ],
                              ),
                            ),
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
                            child: Image(image: AssetImage("images/Notification/notify3.png")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Row(
                                  children: [
                                    Text("Kay Swanson",
                                      style: ThemeData.light().textTheme.labelLarge!.copyWith(color: ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 12),
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width / 3),
                                    Row(
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
                                      ],)
                                  ],
                                ),
                                const SizedBox(height: 8),
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
