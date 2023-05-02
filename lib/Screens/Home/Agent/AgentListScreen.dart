import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Agent/AgentProfile.dart';

class AgentList extends StatefulWidget {
  const AgentList({Key? key}) : super(key: key);

  @override
  State<AgentList> createState() => _AgentListState();
}

class _AgentListState extends State<AgentList> {
  List<AgentDetails> images = [
    AgentDetails(image: 'images/Agent/Agent1.png', name: 'Amanda',number: "1",star: "5"),
    AgentDetails(image: 'images/Agent/Agent2.png', name: 'Anderson',number: '2',star: "4.9"),
    AgentDetails(image: 'images/Agent/Agent3.png', name: 'Samantha',number: "3",star: "3.9"),
    AgentDetails(image: 'images/Agent/Agent4.png', name: 'Andrew',number: "4",star: "5"),
    AgentDetails(image: 'images/Agent/Agent5.png', name: 'Michael',number: "5",star: "4.7"),
    AgentDetails(image: 'images/Agent/Agent6.png', name: 'Tobi',number: "6",star: "5"),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, left: 24,right: 24),
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
                  padding: const EdgeInsets.only(top: 35),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Top Estate Agent",
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
                  padding: const EdgeInsets.only(
                      top: 10,bottom: 20),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const AgentProfileDetail(),));
                          },
                          child: Card(
                              elevation: 0.1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              color: ColorTheme.white1,
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 50),
                                        child: Center(
                                          child: Container(
                                            height: 100,
                                            width: 100,
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
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 9),
                                        child: Text(
                                          select.name,
                                          style: ThemeData.light()
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                              fontWeight: FontWeight.w700,
                                              color: ColorTheme.blueheading),
                                        ),
                                      ),
                                      const SizedBox(height: 15,),
                                      RichText(text: TextSpan(
                                        children: [
                                          const WidgetSpan(child: Icon(Icons.star,color: ColorTheme.staryellow,size: 14,)),
                                          const WidgetSpan(child: SizedBox(width: 3)),
                                          TextSpan(text: select.star,style: ThemeData.light().textTheme.labelSmall!.copyWith(fontSize: 10,color: ColorTheme.greyopasity,fontWeight: FontWeight.w700)),
                                          const WidgetSpan(child: SizedBox(width: 7)),
                                          const WidgetSpan(child: Icon(Icons.home_filled,color: ColorTheme.blueheading,size: 14,)),
                                          const WidgetSpan(child: SizedBox(width: 3)),
                                          TextSpan(text: "112",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontSize: 10,color: ColorTheme.greyopasity,fontWeight: FontWeight.w800)),
                                          const WidgetSpan(child: SizedBox(width: 5)),
                                          TextSpan(text: "Sold",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontSize: 10,color: ColorTheme.greyopasity,fontWeight: FontWeight.w400)),
                                        ]
                                      ))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
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
