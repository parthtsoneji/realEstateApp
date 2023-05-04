import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Home/Search/SecondSearchScreen.dart';

class FirstSearchScreen extends StatefulWidget {
  const FirstSearchScreen({Key? key}) : super(key: key);

  @override
  State<FirstSearchScreen> createState() => _FirstSearchScreenState();
}

class _FirstSearchScreenState extends State<FirstSearchScreen> {
  final globalkey = GlobalKey();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(

          child: Form(
            key: globalkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                  child: Row(
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
                      Text(
                        "Search results",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: ColorTheme.blueheading,
                                fontSize:
                                    MediaQuery.of(context).size.height / 48,
                                fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: ColorTheme.white1,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: const MaterialStatePropertyAll(0),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(ColorTheme.white1),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondSearchScreen(),));
                          },
                          child: const Center(
                              child: Icon(
                            Icons.settings,
                            color: ColorTheme.blueheading,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 20,
                      left: MediaQuery.of(context).size.width / 12,
                      right: MediaQuery.of(context).size.width / 12),
                  child: TextFormField(
                    cursorColor: ColorTheme.green,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      filled: true,
                      contentPadding: EdgeInsets.only(left: 22,top: 22,bottom: 22),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: ColorTheme.white1,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(
                          width: 1.5,
                          color: ColorTheme.green,
                        ),
                      ),
                      suffixIcon: const Icon(Icons.search,
                          color: ColorTheme.blueheading),
                      hintStyle: ThemeData.light()
                          .textTheme
                          .labelLarge!
                          .copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: ColorTheme.blueheading),
                      hintText: "Modern House",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Found",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                  fontSize:
                                  MediaQuery.of(context).size.height /
                                      35,
                                  color: ColorTheme.blueheading,
                                  fontWeight: FontWeight.w400)),
                          const WidgetSpan(
                              child: SizedBox(
                                width: 5,
                              )),
                          TextSpan(
                              text: "0",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                  fontSize:
                                  MediaQuery.of(context).size.height /
                                      30,
                                  color: ColorTheme.blueheading,
                                  fontWeight: FontWeight.w700)),
                          const WidgetSpan(
                              child: SizedBox(
                                width: 5,
                              )),
                          TextSpan(
                              text: "estates",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                  fontSize:
                                  MediaQuery.of(context).size.height /
                                      35,
                                  color: ColorTheme.blueheading,
                                  fontWeight: FontWeight.w400)),
                        ]),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ColorTheme.white1,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected = true;
                                });
                              },
                              child: Container(
                                height: 24,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: isSelected
                                      ? ColorTheme.white
                                      : ColorTheme.white1,
                                ),
                                child: const Center(
                                    child: Image(
                                      image:
                                      AssetImage("images/FeatureList/dot1.png"),
                                      color: ColorTheme.blueheading,
                                    )),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected = false;
                                });
                              },
                              child: Container(
                                height: 24,
                                width: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: isSelected
                                      ? ColorTheme.white1
                                      : ColorTheme.white,
                                ),
                                child: const Center(
                                    child: Image(
                                      image:
                                      AssetImage("images/FeatureList/dot3.png"),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 8),
                const Image(
                    image: AssetImage("images/Notification/alert1.png")),
                const SizedBox(height: 25),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Search",
                          style: ThemeData.light().textTheme.labelMedium!.copyWith(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: ColorTheme.blueheading)),
                      const WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                          text: "not found",
                          style: ThemeData.light().textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: 25,
                              color: ColorTheme.darkblue))
                    ])),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20, bottom: MediaQuery.of(context).size.height / 10),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Text(
                        "Sorry, we can’t find the real estates you are looking for. Maybe, a little spelling mistake?",
                        textAlign: TextAlign.center,
                        style: ThemeData.light().textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: ColorTheme.lightdark)),
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
