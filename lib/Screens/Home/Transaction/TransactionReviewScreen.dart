import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Transaction/TransactionSummery.dart';

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
    TransactionList("images/Transaction/tick2.png", "images/Transaction/bluecon.png", "7545" , "\$ 48,350", "images/Transaction/airplne.png","images/Transaction/mastercard.png"),
  ];
  int index = 0;
  bool selection = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 24,right: 24,left: 24,bottom: 20),
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
                      const Expanded(child: SizedBox()),
                      Text("Transaction review",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 14,fontWeight: FontWeight.w700),),
                      const Expanded(child: SizedBox()),
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
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage("images/ima.png"),fit: BoxFit.cover
                                  )
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Padding(
                                      padding:
                                      EdgeInsets.only(top: 8,left: 8),
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
                                    padding: const EdgeInsets.only(
                                        left: 8,bottom: 10),
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
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height / 1.5,
                                width: MediaQuery.of(context).size.width / 3,
                                child: Column(
                                  children: [
                                    Text("Sky Dandelions Apartment",
                                      style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 12,color: ColorTheme.blueheading),),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Image(
                                          image: AssetImage(
                                              "images/User.png"),
                                          height: 17,
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
                                                  fontSize: 8,
                                                  fontWeight:
                                                  FontWeight
                                                      .w400)),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        height: MediaQuery.of(context).size.height / 20,
                                        width: MediaQuery.of(context).size.width / 7,
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
                    padding: const EdgeInsets.only(left: 24,bottom: 18),
                    child: Text("Period",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorTheme.white1
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            const Icon(Icons.calendar_today_outlined,color: ColorTheme.blueheading,size: 20,),
                            const SizedBox(width: 10),
                            Text("Check In",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 14,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: ColorTheme.white1
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            const Icon(Icons.calendar_today_outlined,color: ColorTheme.blueheading,size: 20,),
                            const SizedBox(width: 10),
                            Text("Check Out",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 14,fontWeight: FontWeight.w400),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,bottom: 18,top: 24),
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
                          const Icon(Icons.chat,color: ColorTheme.blueheading,size: 25,),
                          const SizedBox(width: 15),
                          Text("Write your note in here",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24,bottom: 18,top: 24),
                    child: Text("Payment Method",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
                  ),
                  SizedBox(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: trans.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final select = trans[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 20),
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
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16,right: 8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 16),
                                        child: Image(image: AssetImage(select.icon)),
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          const Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                          const Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                          const Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                          const Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                          const Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                          const Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                          const Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                          const Icon(Icons.circle_rounded,color: ColorTheme.white,size: 10,),
                                          const SizedBox(width: 5),
                                          Text(select.number,style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.white,fontWeight: FontWeight.w600,fontSize: 18),),
                                        ],
                                      ),
                                      const Expanded(child: SizedBox()),
                                      Text("balance",style: ThemeData.light().textTheme.labelMedium!.copyWith(fontSize: 8,fontWeight: FontWeight.w600,color: ColorTheme.white),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 15),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(select.price,style: ThemeData.light().textTheme.labelMedium!.copyWith(fontSize: 12,fontWeight: FontWeight.w600,color: ColorTheme.white),),
                                            Image(image: AssetImage(select.logo))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
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
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Have a voucher?",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
                      Text("click in here",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 10,fontWeight: FontWeight.w700),),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Visibility(
                    visible: selection,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 11,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorTheme.green.withOpacity(0.1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 52,
                              width: 118,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorTheme.darkblue
                            ),
                              child: Center(
                                child: Text("HLWN40",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.white,fontSize: 18,fontWeight: FontWeight.w700),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Halloween sale",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontWeight: FontWeight.w700,fontSize: 12),),
                                  Text("Get 40% off on all transactions",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightdark,fontWeight: FontWeight.w700,fontSize: 9),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          Column(
            children: [
             const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      height: 54,
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: ColorTheme.green
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(55.0)),
                              ),
                              builder: (context) => TransactionBottomSheet());
                        },
                        child: Text(
                          "Next",
                          style:
                          AppTheme.lightTheme().textTheme.labelMedium!.copyWith(color: ColorTheme.white,fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionSummary(),));
                      },
                      child: Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ColorTheme.white,
                          boxShadow: const [
                            BoxShadow(spreadRadius: 2,color: ColorTheme.green,blurStyle: BlurStyle.outer,blurRadius: 100,)
                          ]
                        ),
                        child: const Center(
                          child: Icon(Icons.arrow_forward,color: ColorTheme.black,size: 20,),
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
  Widget TransactionBottomSheet() {
    return SizedBox(
      height: 900,
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
              child:  Text(
                "Add Voucher",
                style: ThemeData.light().textTheme.labelMedium!.copyWith(
                    color: ColorTheme.blueheading,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
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
                    const Icon(Icons.chat,color: ColorTheme.blueheading,size: 25,),
                    const SizedBox(width: 15),
                    Text("Write your note in here",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child:  Text(
                "Your Available vouchers",
                style: ThemeData.light().textTheme.labelMedium!.copyWith(
                    color: ColorTheme.blueheading,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selection = true;
                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: ColorTheme.green.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.0),
                            color: ColorTheme.greenaccent),
                        child: const Image(
                            image: AssetImage("images/HomeImages/coupon.png"),
                            color: ColorTheme.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child:  RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "HLWN40",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                    color: ColorTheme.blueheading,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700)),
                            TextSpan(
                                text: "\nClick to use this voucher",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                    color: ColorTheme.greyopasity,
                                    fontSize: MediaQuery.of(context).size.width / 60,
                                    fontWeight: FontWeight.w400))
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: MediaQuery.of(context).size.height / 11,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: ColorTheme.green.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.0),
                          color: ColorTheme.greenaccent),
                      child: const Image(
                          image: AssetImage("images/HomeImages/coupon.png"),
                          color: ColorTheme.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child:  RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "HGJC20",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                  color: ColorTheme.blueheading,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: "\nClick to use this voucher",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                  color: ColorTheme.greyopasity,
                                  fontSize: MediaQuery.of(context).size.width / 60,
                                  fontWeight: FontWeight.w400))
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 54,
              width: MediaQuery.of(context).size.width / 1.5,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: ColorTheme.green
                ),
                onPressed: () {
                },
                child: Text(
                  "Apply Voucher",
                  style:
                  AppTheme.lightTheme().textTheme.labelMedium!.copyWith(color: ColorTheme.white,fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
