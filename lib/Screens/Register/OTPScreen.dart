// ignore_for_file: depend_on_referenced_packages, file_names

import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 18,
                    top: MediaQuery.of(context).size.height / 35),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const SizedBox(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      backgroundColor: ColorTheme.white1,
                    child: Icon(Icons.arrow_back_ios,size: 10,color: ColorTheme.darkblue,),
                    ),
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20,left: 24),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Enter The ",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                            fontSize: 25, color: ColorTheme.darkblue,fontWeight: FontWeight.w500),
                      ),
                      const WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: "code",
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
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 25,left: 24),
                child: Text("Enter the 4 digit code that we just sent to ",
                    style: ThemeData.light()
                        .textTheme
                        .labelMedium!
                        .copyWith(
                        fontWeight: FontWeight.w400,
                        color: ColorTheme.blueheading)),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 24),
                child: Text("jonathan@gmail.com",
                    style: ThemeData.light()
                        .textTheme
                        .labelMedium!
                        .copyWith(
                        fontWeight: FontWeight.w700,
                        color: ColorTheme.blueheading)),
              ),

              Padding(
                padding: EdgeInsets.only(left: 24,top: MediaQuery.of(context).size.height / 10, right: 24),
                child: OtpTextField(
                  numberOfFields: 4,
                  textStyle: ThemeData.light()
                      .textTheme
                      .labelSmall!
                      .copyWith(color: ColorTheme.darkblue, fontSize: 30),
                  fieldWidth: MediaQuery.of(context).size.width / 5.5,
                  borderColor: ColorTheme.blue,
                  showFieldAsBox: true,
                  fillColor: ColorTheme.white1,
                  filled: true,
                  cursorColor: Colors.green,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 4),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: ColorTheme.white1,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.timer_rounded,
                              color: ColorTheme.darkblue,
                              size: 24,
                            ),
                            const SizedBox(width: 11),
                            Text("00:21",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        color: ColorTheme.darkblue, fontSize: 17))
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn't receive the OTP?",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 30,
                                    color: ColorTheme.blueheading),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Resend OTP",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.width / 30,
                                    color: ColorTheme.blue,
                                    fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
