// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Register/OTPScreen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final globalkey = GlobalKey();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  bool _isShow = false;
  bool _isEmail = false;
  bool _isPass = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: globalkey,
          child: SingleChildScrollView(
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
                          text: "Create your",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                              fontSize: 25, color: ColorTheme.darkblue),
                        ),
                        const WidgetSpan(child: SizedBox(width: 10)),
                        TextSpan(
                          text: "account",
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
                  child: Text("quis nostrud execitation ullamco laboris nisi ut",
                      style: ThemeData.light()
                          .textTheme
                          .labelMedium!
                          .copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorTheme.blueheading)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 10,
                      left: MediaQuery.of(context).size.width / 16,
                      right: MediaQuery.of(context).size.width / 16),
                  child: TextFormField(
                    style: ThemeData.light()
                        .textTheme
                        .labelMedium!
                        .copyWith(color: ColorTheme.darkblue),
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          _isShow = true;
                        });
                      } else {
                        setState(() {
                          _isShow = false;
                        });
                      }
                    },
                    controller: nameController,
                    cursorColor: ColorTheme.green,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 10.0),
                      filled: true,
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            width: 1.5, color: ColorTheme.green),
                      ),
                      prefixIcon: _isShow == false
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.person,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                      suffixIcon: _isShow
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.person,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 16,
                      right: MediaQuery.of(context).size.width / 16),
                  child: TextFormField(
                    cursorColor: ColorTheme.green,
                    style: ThemeData.light()
                        .textTheme
                        .labelMedium!
                        .copyWith(color: ColorTheme.darkblue),
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          _isEmail = true;
                        });
                      } else {
                        setState(() {
                          _isEmail = false;
                        });
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 10.0),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,),
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            width: 1.5, color: ColorTheme.green),
                      ),
                      prefixIcon: _isEmail == false
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.email,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                      suffixIcon: _isEmail
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.email,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 16,
                      right: MediaQuery.of(context).size.width / 16),
                  child: TextFormField(
                    cursorColor: ColorTheme.green,
                    style: ThemeData.light()
                        .textTheme
                        .labelMedium!
                        .copyWith(color: ColorTheme.darkblue),
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          _isPass = true;
                        });
                      } else {
                        setState(() {
                          _isPass = false;
                        });
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 10.0),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,),
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            width: 1.5, color: ColorTheme.green),
                      ),
                      prefixIcon: _isPass == false
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.lock,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                      suffixIcon: _isPass
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.lock,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 40),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 15,
                      right: MediaQuery.of(context).size.width / 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Terms of service",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.blue, fontSize: 16)),
                      Text("hide password",
                          style:
                              ThemeData.light().textTheme.labelLarge!.copyWith(
                                    color: ColorTheme.blue,
                                    fontSize: 16,
                                  ))
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 15),
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 13,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorTheme.green),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OtpScreen(),
                            ));
                      },
                      child: Text(
                        "Register",
                        style: ThemeData.light().textTheme.labelMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: ColorTheme.white),
                      ),
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
