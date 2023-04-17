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
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30,
                      top: MediaQuery.of(context).size.height / 90),
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
                        ),
                        child: const Icon(Icons.arrow_back_ios,
                            color: ColorTheme.hexablue),
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
                            "Create your",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 25, color: ColorTheme.darkblue),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "account",
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
                      Text("quis nostrud execitation ullamco laboris nisi ut",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: ColorTheme.darktype)),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                Padding(
                  padding: EdgeInsets.only(
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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 10.0),
                      filled: true,
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                            width: 1.5, color: ColorTheme.green),
                      ),
                      prefixIcon: _isShow == false
                          ? IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                      suffixIcon: _isShow
                          ? IconButton(
                              onPressed: () {},
                              icon: Icon(
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
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                            width: 1.5, color: ColorTheme.green),
                      ),
                      prefixIcon: _isEmail == false
                          ? IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.email,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                      suffixIcon: _isEmail
                          ? IconButton(
                              onPressed: () {},
                              icon: Icon(
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
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                            width: 1.5, color: ColorTheme.green),
                      ),
                      prefixIcon: _isPass == false
                          ? IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.lock,
                                color: ColorTheme.darkblue,
                              ),
                            )
                          : null,
                      suffixIcon: _isPass
                          ? IconButton(
                              onPressed: () {},
                              icon: Icon(
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
                                  color: ColorTheme.regterm, fontSize: 16)),
                      Text("hide password",
                          style:
                              ThemeData.light().textTheme.labelLarge!.copyWith(
                                    color: ColorTheme.regterm,
                                    fontSize: 16,
                                  ))
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 15),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ColorTheme.deepaccent),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
