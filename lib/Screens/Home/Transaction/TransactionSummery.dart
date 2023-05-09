import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/NavigationBar.dart';

class TransactionSummary extends StatefulWidget {
  const TransactionSummary({Key? key}) : super(key: key);

  @override
  State<TransactionSummary> createState() => _TransactionSummaryState();
}

class _TransactionSummaryState extends State<TransactionSummary> {
  List<TransactionList> trans = [
    TransactionList("images/Transaction/tick1.png", "images/Transaction/greencon.png", "1222" , "\$ 31,250", "images/Transaction/airplne.png","images/Transaction/mastercard.png"),
    TransactionList("images/Transaction/tick2.png", "images/Transaction/bluecon.png", "1542" , "\$ 54,200", "images/Transaction/airplne.png","images/Transaction/visa.png"),
    TransactionList("images/Transaction/tick1.png", "images/Transaction/greencon.png", "3254" , "\$ 25,000", "images/Transaction/airplne.png","images/Transaction/mastercard.png"),
    TransactionList("images/Transaction/tick2.png", "images/Transaction/bluecon.png", "7545" , "\$ 48,350", "images/Transaction/airplne.png","images/Transaction/mastercard.png"),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Stack(
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
                                width: MediaQuery.of(context).size.width / 3.5,
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
                      child: Text("Payment Detail",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
                    ),
                    SizedBox(height: 19),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1,color: ColorTheme.lightwhite)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24,top: 24,right: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text("Period time",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),),
                              Text("2 month",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),),
                            ],),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 24,right: 24),
                            child: Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Monthly payment ",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),),
                                    Text("\$ 220",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),),
                                  ],),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(left: 24,bottom: 24,right: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Discount",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),),
                                Text("-\$ 88",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightwhite,fontSize: 12,fontWeight: FontWeight.w400),),
                              ],),
                          ),
                          Expanded(child: SizedBox()),
                          Container(
                            height: 70,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                              ),
                              color: ColorTheme.white1
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 17,right: 17),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total",
                                    style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontWeight: FontWeight.w600,fontSize: 18),),
                                  Container(
                                    width: 1,
                                    height: 50,
                                    color: ColorTheme.grey.withOpacity(0.5),
                                  ),
                                  Text("\$ 352",
                                    style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontWeight: FontWeight.w600,fontSize: 18),),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment Method",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
                        Text("change",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 10,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(width: 1,color: ColorTheme.lightwhite)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: AssetImage("images/Transaction/paypla.png")),
                            SizedBox(width: 15),
                            Text(".......an@email.com",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.lightdark,fontSize: 12,fontWeight: FontWeight.w400),),
                          ],
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
                      Container(
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
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget TransactionBottomSheet() {
    return SizedBox(
      height: 900,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Image(
                    image: const AssetImage("images/Slide.png"),
                    width: MediaQuery.of(context).size.width / 3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,bottom: 18,top: 35),
              child: Text("Change Payment",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.blueheading,fontSize: 18,fontWeight: FontWeight.w700),),
            ),
            SizedBox(height: 24),
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
            Expanded(child: SizedBox()),
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
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(55.0)),
                      ),
                      builder: (context) => TransactionCompleteBottomSheet());
                },
                child: Text(
                  "Select Payment",
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
  Widget TransactionCompleteBottomSheet() {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 1.65,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Image(image: const AssetImage("images/Slide.png"),width: MediaQuery.of(context).size.width / 3),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Image(image: const AssetImage("images/alertsuccess.png"),height: MediaQuery.of(context).size.height / 5.3,width: 142),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Account",
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
                      text: "Successfully",
                      style: ThemeData.light()
                          .textTheme
                          .labelMedium!
                          .copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: ColorTheme.blue),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'created',
              style: ThemeData.light().textTheme.labelMedium!.copyWith(
                  color: ColorTheme.blueheading,
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur.",
                  style: ThemeData.light()
                      .textTheme
                      .labelMedium!
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            ColorTheme.green),
                        elevation: MaterialStateProperty.all(15),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen(),));
                    },
                    child: Text("Finish",
                        style: AppTheme.lightTheme()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                            color: ColorTheme.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16)),
                  )),
            ),
          ],
        )
    );
  }

}
