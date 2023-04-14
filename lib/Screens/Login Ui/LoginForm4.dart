import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';

class LoginForm4 extends StatefulWidget {
  const LoginForm4({Key? key}) : super(key: key);

  @override
  State<LoginForm4> createState() => _LoginForm4State();
}

class _LoginForm4State extends State<LoginForm4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30,
                      top: MediaQuery.of(context).size.height / 90),
                  child: Align(
                    alignment: Alignment.topLeft,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Padding(
                  padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "FAQ",
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
                                color: ColorTheme.hexablue),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 25),
                      Text("quis nostrud execitation ullamco laboris nisi ut",
                          style: ThemeData.light().textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: ColorTheme.darktype)),
                    ],
                  ),
                ),
              ],
            ),
          ),
    ));
  }
}
