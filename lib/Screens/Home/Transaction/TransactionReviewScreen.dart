import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';

class TransactionReviewScreen extends StatefulWidget {
  const TransactionReviewScreen({Key? key}) : super(key: key);

  @override
  State<TransactionReviewScreen> createState() => _TransactionReviewScreenState();
}

class _TransactionReviewScreenState extends State<TransactionReviewScreen> {
  
  List<TransactionList> trans = [
    TransactionList("images/Transaction/tick1.png", "images/Transaction/greencon.png", "1222" , "\$ 31,250", "images/Transaction/airplne.png","images/Transaction/mastercard.png"),
    TransactionList("images/Transaction/tick2.png", "images/Transaction/bluecon.png", "1542" , "\$ 54,200", "images/Transaction/airplne.png","images/Transaction/visa.png"),
    TransactionList("images/Transaction/tick1.png", "images/Transaction/greencon.png", "3254" , "\$ 25,000", "images/Transaction/airplne.png","images/Transaction/mastercard.png"),
    TransactionList("images/Transaction/tick2 .png", "images/Transaction/bluecon.png", "7545" , "\$ 48,350", "images/Transaction/airplne.png","images/Transaction/mastercard.png"),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 24,right: 24,left: 24,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                Expanded(child: SizedBox()),
                Text("Transaction review",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 14,fontWeight: FontWeight.w700),),
                Expanded(child: SizedBox()),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 15,bottom: 24),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
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
                          height: MediaQuery.of(context).size.height / 1.5,
                          width: 109,
                          child: Column(
                            children: [
                              Text("Sky Dandelions Apartment",
                                style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 15,color: ColorTheme.blueheading),),
                              const SizedBox(height: 10),
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
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 20),
                                child: Container(
                                  height: 47,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: ColorTheme.white
                                  ),
                                  child: Center(child: Text("Rent",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 10,fontWeight: FontWeight.w500),)),
                                ),
                              )

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24,bottom: 18),
              child: Text("Period",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorTheme.white1
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.calendar_today_outlined,color: ColorTheme.blueheading,size: 20,),
                          SizedBox(width: 10),
                          Text("Check In",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 14,fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: MediaQuery.of(context).size.height / 13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorTheme.white1
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.calendar_today_outlined,color: ColorTheme.blueheading,size: 20,),
                          SizedBox(width: 10),
                          Text("Check Out",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 14,fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24,bottom: 18,top: 24),
              child: Text("Note for Owner",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorTheme.white1
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Icon(Icons.chat,color: ColorTheme.blueheading,size: 25,),
                    SizedBox(width: 15),
                    Text("Write your note in here",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24,bottom: 18,top: 24),
              child: Text("Payment Method",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
            ),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,

              child: ListView.builder(
                itemCount: trans.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final select = trans[index];
                  return Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Stack(
                     children: [
                       Container(
                         height: 180,
                         width: 159,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage(select.image),
                               fit: BoxFit.cover
                           ),
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Image(image: AssetImage(select.icon)),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.end,
                                 children: [
                                   Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                   Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                   Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                   Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                   Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                   Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                   Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                   Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                   SizedBox(width: 5),
                                   Text(select.number,style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.white,fontWeight: FontWeight.w600,fontSize: 18),),
                                 ],
                               ),
                             ),

                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 50),
                         child: Image(image: AssetImage(select.image2),color: ColorTheme.white.withOpacity(0.8),),
                       ),
                     ],
                    ),
                  );

              },),
            )
          ],
        ),
      ),
    );
  }
}
