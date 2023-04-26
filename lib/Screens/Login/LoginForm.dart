// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Account/Location/AccountLocation.dart';
import 'package:realstateapp/Screens/Login/FAQ&SignIn.dart';
import 'package:realstateapp/Screens/Register/RegisterPage.dart';

class LoginForm1 extends StatefulWidget {
  const LoginForm1({Key? key}) : super(key: key);

  @override
  State<LoginForm1> createState() => _LoginForm1State();
}

class _LoginForm1State extends State<LoginForm1> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  bool _isShow = false;
  bool pass = true;

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Password";
    } else if (value.length < 6) {
      return "Password must be at least 6 characters";
    } else {
      return null;
    }
  }

  void _onFormSubmitted() {
    if (globalKey.currentState!.validate()) {
      setState(() {
        _isShow = false;
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginForm4(),
            ));
      });
      // Form is valid, do something here
    } else {
      // Form is invalid, show error message
      setState(() {
        _isShow = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: globalKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  image: const AssetImage('images/vector.png'),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Let's",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,
                                    color: ColorTheme.darkblue),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Sign In",
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
                SizedBox(height: MediaQuery.of(context).size.height / 35),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 16,
                      right: MediaQuery.of(context).size.width / 16),
                  child: Visibility(
                    visible: _isShow,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: ColorTheme.blue,
                      ),
                      child: Center(
                          child: Text(
                        "your password in incomplete",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorTheme.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 55,
                    left: MediaQuery.of(context).size.width / 16,
                    right: MediaQuery.of(context).size.width / 16,
                  ),
                  child: TextFormField(
                    cursorColor: ColorTheme.green,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 1.5,
                          color: ColorTheme.green,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.email_outlined, color: ColorTheme.darkblue),
                      hintText: " Email",
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 55,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 16,
                    right: MediaQuery.of(context).size.width / 16,
                  ),
                  child: TextFormField(
                    cursorColor: ColorTheme.green,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: ColorTheme.green,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_outline_rounded,
                        color: ColorTheme.darkblue,
                      ),
                      hintText: "Password",
                    ),
                    validator: _validatePassword,
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 15,
                      right: MediaQuery.of(context).size.width / 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Forgot Password?",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                      Text("Show password",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ColorTheme.greenAccent),
                    ),
                    onPressed: _onFormSubmitted,
                    child: Text(
                      "Login",
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: ColorTheme.white),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 60),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: ColorTheme.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "OR",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: ColorTheme.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: ColorTheme.grey,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 80),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 2.6,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(0),
                            backgroundColor:
                                MaterialStateProperty.all(ColorTheme.white1),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LocationPage(),));
                          },
                          child: const Center(
                              child: Image(
                            image: AssetImage('images/123.png'),
                            height: 32,
                            width: 32,
                          ))),
                    ),
                    const SizedBox(width: 8),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 2.6,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(0),
                            backgroundColor:
                                MaterialStateProperty.all(ColorTheme.white1),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LocationPage(),));
                          },
                          child: const Center(
                              child: Image(
                            image: AssetImage('images/icons8.png'),
                            height: 32,
                            width: 32,
                          ))),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have a account?",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: ColorTheme.darktype)),
                      const SizedBox(width: 3),
                      TextButton(
                        child: Text("Register",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: ColorTheme.blueAccent)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
                              ));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
