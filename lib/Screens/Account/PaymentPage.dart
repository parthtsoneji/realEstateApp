import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                      SizedBox(
                        height: 38,
                        width: 86,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                )),
                            backgroundColor:
                            MaterialStateProperty.all(ColorTheme.white1),
                          ),
                          onPressed: () {},
                          child: Text(
                            "skip",
                            style: ThemeData.light()
                                .textTheme
                                .labelSmall!
                                .copyWith(
                                fontWeight: FontWeight.w400,
                                color: ColorTheme.skip),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 20),
                    child: SizedBox(
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Add your",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: ColorTheme.darkblue)),
                          Text("payment method  ",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: ColorTheme.hexablue)),
                          const SizedBox(height: 20),
                          Text(
                            "You can edit this later on your account setting.",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: ColorTheme.darktype),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 22),
                    child: Center(
                      child: Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                  "images/CreditCard.png"),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 25),
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 8),
                    child: Row(
                      children: const [
                        Image(image: AssetImage("images/Paymentunded.png")),
                        SizedBox(width: 10),
                        Image(image: AssetImage('images/Paymentrounded.png')),
                        SizedBox(width: 10),
                        Image(image: AssetImage("images/PaymentRounded.png")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 15),
                    child: Column(
                      children: [
                        const Center(
                          child: SizedBox(
                            width: 100,
                            child: LinearProgressIndicator(
                              value: 0.7,
                              backgroundColor: ColorTheme.white1,
                              valueColor:
                              AlwaysStoppedAnimation<Color>(ColorTheme.green),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 12,
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(ColorTheme.deepaccent),
                                shadowColor:
                                MaterialStateProperty.all(ColorTheme.regterm),
                                elevation: MaterialStateProperty.all(50),
                                shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage(),));
                              },
                              child: Text(
                                "Next",
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
