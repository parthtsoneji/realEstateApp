// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Account/Location/AccountLocation.dart';
import 'package:realstateapp/Screens/Login/FAQ&SignIn.dart';
import 'package:realstateapp/Screens/Register/RegisterPage.dart';

class FirstLoginForm extends StatefulWidget {
  const FirstLoginForm({Key? key}) : super(key: key);

  @override
  State<FirstLoginForm> createState() => _FirstLoginFormState();
}

class _FirstLoginFormState extends State<FirstLoginForm> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  bool _isShow = false;
  bool pass = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: globalKey,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image(
                image: const AssetImage('images/vector.png'),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 10),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Let's",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: ColorTheme.darkblue),
                      ),
                      const WidgetSpan(child: SizedBox(width: 10)),
                      TextSpan(
                        text: "Sign In",
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
                padding: EdgeInsets.only(
                    left: 24, top: MediaQuery.of(context).size.height / 25),
                child: Text("quis nostrud execitation ullamco laboris nisi ut",
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: ColorTheme.blueheading)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 35,
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
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.bold, color: ColorTheme.white),
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
                    prefixIcon: const Icon(Icons.email_outlined,
                        color: ColorTheme.darkblue),
                    hintText: " Email",
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
                  obscureText: pass,
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
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: ColorTheme.darkblue,
                    ),
                    suffix: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            pass = !pass;
                          });
                        },
                        child: Icon(pass ? Icons.visibility : Icons.visibility_off),
                      ),),
                    hintText: "Password",
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                        _isShow = false;
                    }
                    else if(value.length < 6){
                      _isShow = true;
                    }
                    else {
                      _isShow = false;
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 80,
                    left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.width / 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Forgot Password?",
                        style: ThemeData.light().textTheme.labelLarge!.copyWith(
                            color: ColorTheme.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    Text(
                      "Show password",
                      style: ThemeData.light().textTheme.labelLarge!.copyWith(
                          color: ColorTheme.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 20),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorTheme.green),
                      ),
                      onPressed: () {
                        if(_isShow == false){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FAQScreen(),));
                        }
                      },
                      child: Text(
                        "Login",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: ColorTheme.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: MediaQuery.of(context).size.height / 60),
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
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
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
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 80),
                child: Row(
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LocationPage(),
                                ));
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LocationPage(),
                              ));
                        },
                        child: const Center(
                          child: Image(
                            image: AssetImage('images/icons8.png'),
                            height: 32,
                            width: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("Don't have a account?",
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorTheme.blueheading)),
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
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
