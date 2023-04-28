import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Login/LoginForm.dart';
import 'package:realstateapp/Screens/Register/RegisterPage.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({Key? key}) : super(key: key);

  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  int index = 0;
  List<ImageData> image = [
    ImageData("images/login1.png"),
    ImageData("images/login2.png"),
    ImageData("images/login3.png"),
    ImageData("images/login4.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: image.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 10,
                      crossAxisSpacing: 8,
                      mainAxisExtent: MediaQuery.of(context).size.height / 5,
                      mainAxisSpacing: 9,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          image[index].image,
                          fit: BoxFit.cover,
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 32,
              left: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Ready to',
                        style: ThemeData.light().textTheme.labelMedium!.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: ColorTheme.darkblue),
                      ),
                      TextSpan(
                          text: "explore ?",
                          style: ThemeData.light().textTheme.labelMedium!.copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: ColorTheme.blueAccent)),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.5,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(ColorTheme.green),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstLoginForm()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.email, color: ColorTheme.white),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Continue with Email",
                          style: ThemeData.light().textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: ColorTheme.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30,top: MediaQuery.of(context).size.height / 20),
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
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 30),
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
                    onPressed: () {},
                    child: const Center(
                      child: Image(
                        image: AssetImage('images/123.png'),
                        height: 32,
                        width: 32,
                      ),
                    ),
                  ),
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
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 15, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
