import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Home/Notification/ChatCallScreen.dart';

class ChatBoxScreen extends StatefulWidget {
  const ChatBoxScreen({Key? key}) : super(key: key);

  @override
  State<ChatBoxScreen> createState() => _ChatBoxScreenState();
}

class _ChatBoxScreenState extends State<ChatBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                child: Row(
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
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 50),
                      child: Stack(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: ColorTheme.transparent,
                            backgroundImage:
                                AssetImage("images/Notification/notify5.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 10),
                            child: const CircleAvatar(
                                radius: 8,
                                backgroundColor: ColorTheme.white1,
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: ColorTheme.green,
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Milano",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: ColorTheme.blueheading,
                                    fontSize: 14)),
                        TextSpan(
                            text: "\n Online",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: ColorTheme.greyopasity,
                                    fontSize: 10)),
                      ])),
                    ),
                    const Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChatCallScreen(),
                            ));
                      },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: ColorTheme.white1,
                          child: Icon(
                            Icons.call,
                            size: 20,
                            color: ColorTheme.blueheading,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width/1.1,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: ColorTheme.white1),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 30,
                                width:
                                    MediaQuery.of(context).size.width / 3.8,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: ColorTheme.blue.withOpacity(0.69)),
                                child: Center(
                                    child: Text(
                                  "December 12, 2022",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          fontSize: 10,
                                          color: ColorTheme.white,
                                          fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 14,top: 20),
                            child: Row(
                              children: [
                                const Expanded(child: SizedBox()),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 5.2,
                                      width: MediaQuery.of(context).size.width / 1.5,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(25),
                                          topLeft: Radius.circular(25),
                                          bottomLeft: Radius.circular(25)),
                                      color: ColorTheme.white),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height:
                                              MediaQuery.of(context).size.height /
                                                  4,
                                          width:
                                              MediaQuery.of(context).size.width /
                                                  4,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(25.0),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "images/HomeImages/image25.png"),
                                                fit: BoxFit.fill),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Image(
                                                  image: AssetImage(
                                                      "images/HomeImages/heart.png"),
                                                  height: 25,
                                                  width: 25,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: MediaQuery.of(context)
                                                            .size
                                                            .height /
                                                        14,
                                                    left: 12),
                                                child: Container(
                                                  height: MediaQuery.of(context).size.height / 40,
                                                  width: MediaQuery.of(context).size.width / 1,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: ColorTheme.darkblue
                                                          .withOpacity(0.69)),
                                                  child: Center(
                                                    child: Text("Apartment",
                                                        style: ThemeData.light()
                                                            .textTheme
                                                            .labelLarge!
                                                            .copyWith(
                                                                color: ColorTheme
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: MediaQuery.of(context).size.width / 50)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Sky Dandelions ",
                                                style: ThemeData.light()
                                                    .textTheme
                                                    .labelLarge!
                                                    .copyWith(
                                                        color: ColorTheme
                                                            .blueheading,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                            Text("Apartment",
                                                style: ThemeData.light()
                                                    .textTheme
                                                    .labelLarge!
                                                    .copyWith(
                                                        color: ColorTheme
                                                            .blueheading,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                            const SizedBox(height: 10),
                                            Row(
                                              children: [
                                                const Icon(Icons.star,
                                                    color: ColorTheme.staryellow,
                                                    size: 12),
                                                Text(
                                                  "4.9",
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelSmall!
                                                      .copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: ColorTheme
                                                              .blueheading),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              children: [
                                                const Image(
                                                  image: AssetImage(
                                                      "images/User.png"),
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 3),
                                                  child: Text(
                                                      "Jakarta, Indonesia",
                                                      style: ThemeData.light()
                                                          .textTheme
                                                          .labelLarge!
                                                          .copyWith(
                                                              color: ColorTheme
                                                                  .greyopasity,
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(right: 14,top: 15),
                            child: Row(
                              children: [
                                const Expanded(child: SizedBox()),
                                Container(
                                  height: MediaQuery.of(context).size.height / 12,
                                  width: MediaQuery.of(context).size.width / 1.69,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(25),
                                          topLeft: Radius.circular(25),
                                          bottomLeft: Radius.circular(25)),
                                      color: ColorTheme.white),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 16),
                                    child: Center(
                                        child: Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod?",
                                            style: ThemeData.light()
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13,
                                                    color:
                                                        ColorTheme.greyopasity))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 14),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                const Expanded(child: SizedBox()),
                                Stack(
                                  children: const [
                                    Icon(
                                      Icons.check,
                                      color: ColorTheme.green,
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: Icon(
                                        Icons.check,
                                        color: ColorTheme.green,
                                        size: 18,
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "10:45",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: ColorTheme.lightwhite),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15,
                                top: 20),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 8,
                              width: MediaQuery.of(context).size.width / 1.69,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(25),
                                      topRight: Radius.circular(25),
                                      bottomLeft: Radius.circular(25)),
                                  color: ColorTheme.darkblue),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 16),
                                child: Center(
                                    child: Text(
                                        " tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud xercitation.",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: ColorTheme.white))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15),
                            child: Text(
                              "10:45",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: ColorTheme.lightwhite),
                            ),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24, right: 24, bottom: 24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorTheme.white,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              cursorColor: Colors.green,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: ColorTheme.white,
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(left: 17),
                                  child: Icon(Icons.camera_alt,
                                      color: ColorTheme.greyopasity,
                                      size: 20),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(100.0),
                                  borderSide: BorderSide.none,
                                ),
                                hintStyle: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        color: ColorTheme.lightwhite,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                hintText: "Say Something",
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: ColorTheme.green,
                                        child: Center(
                                            child: Icon(
                                          Icons.send_rounded,
                                          color: ColorTheme.white,
                                          size: 20,
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
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
