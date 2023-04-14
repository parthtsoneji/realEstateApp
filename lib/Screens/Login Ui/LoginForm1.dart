import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Login%20Ui/LoginForm2.dart';

class LoginForm1 extends StatefulWidget {
  const LoginForm1({Key? key}) : super(key: key);

  @override
  State<LoginForm1> createState() => _LoginForm1State();
}

class _LoginForm1State extends State<LoginForm1> {
  final GlobalKey<FormState> globalKey = GlobalKey();

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
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 55,
                      left: MediaQuery.of(context).size.width / 16,
                      right: MediaQuery.of(context).size.width / 16),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorTheme.white1,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 1.5,color: ColorTheme.green),
                        ),
                        prefixIcon: const Icon(Icons.email_outlined,
                            color: ColorTheme.darkblue),
                        hintText: " Email"),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 55,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 16,
                      right: MediaQuery.of(context).size.width / 16),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorTheme.white1,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(width: 1.5,color: ColorTheme.green),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: ColorTheme.darkblue,
                        ),
                        hintText: "Password"),
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
                          style: ThemeData.light().textTheme.labelLarge!.copyWith(
                              color: ColorTheme.hexablue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      Text("Show password",
                          style: ThemeData.light().textTheme.labelLarge!.copyWith(
                              color: ColorTheme.hexablue,
                              fontSize: 16,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(ColorTheme.deepaccent),
                    ),
                    onPressed: () {},
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
                SizedBox(height: MediaQuery.of(context).size.height / 70),
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginForm2()));
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
                          onPressed: () {},
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
                  padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have a account?",
                          style: ThemeData.light().textTheme.labelMedium!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: ColorTheme.darktype)),
                      const SizedBox(width: 3),
                      Text('Register',
                          style: ThemeData.light().textTheme.labelMedium!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: ColorTheme.blueaccess))
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
