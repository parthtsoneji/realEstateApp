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
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 18,
                    top: MediaQuery.of(context).size.height / 35),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: ColorTheme.white1),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: ColorTheme.hexablue,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Enter The ",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 25, color: ColorTheme.darkblue),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Code",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: ColorTheme.hexablue),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 25),
                    Text("Enter the 4 digit code that we just sent to ",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontWeight: FontWeight.w400,
                                color: ColorTheme.darktype)),
                    Text("jonathan@gmail.com",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                color: ColorTheme.darktype)),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: OtpTextField(
                  cursorColor: Colors.green,
                  numberOfFields: 4,
                  textStyle: ThemeData.light()
                      .textTheme
                      .labelSmall!
                      .copyWith(color: ColorTheme.darkblue, fontSize: 30),
                  fieldWidth: MediaQuery.of(context).size.width / 5.5,
                  borderColor: ColorTheme.regterm,
                  showFieldAsBox: true,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 4),
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 1.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
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
                                  color: ColorTheme.darktype),
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
                                  color: ColorTheme.regterm,
                                  fontWeight: FontWeight.w700),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
