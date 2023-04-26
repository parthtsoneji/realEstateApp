// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  bool isExpanded = false;
  bool _isExpanded = false;
  bool isBuyerSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 10,
                        color: ColorTheme.darkblue,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 20,
                    left: MediaQuery.of(context).size.width / 12),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "FAQ",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: ColorTheme.darkblue),
                      ),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                          text: "&",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(fontSize: 25, color: ColorTheme.blue)),
                      WidgetSpan(child: SizedBox(width: 5)),
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
                    top: MediaQuery.of(context).size.height / 25,
                    left: MediaQuery.of(context).size.width / 12),
                child: Text("Find answer to your problem using this app",
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: ColorTheme.blueheading)),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 30,
                    left: MediaQuery.of(context).size.width / 12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: ColorTheme.blue,
                      child: Image(
                          image: AssetImage("images/world.png"),
                          color: ColorTheme.white,
                          height: 20,
                          width: 20),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Visit the webSite",
                      style: ThemeData.light()
                          .textTheme
                          .labelMedium!
                          .copyWith(color: ColorTheme.darkblue),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 30,
                    left: MediaQuery.of(context).size.width / 12),
                child: Row(
                  children: [
                    const CircleAvatar(
                        backgroundColor: ColorTheme.blue,
                        child: Icon(
                          Icons.email_outlined,
                          color: ColorTheme.white,
                        )),
                    const SizedBox(width: 10),
                    Text(
                      "Email us",
                      style: ThemeData.light()
                          .textTheme
                          .labelMedium!
                          .copyWith(color: ColorTheme.darkblue),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 30,
                    left: MediaQuery.of(context).size.width / 12),
                child: Row(
                  children: [
                    const CircleAvatar(
                        backgroundColor: ColorTheme.blue,
                        child: Icon(Icons.file_copy_rounded,
                            color: ColorTheme.white)),
                    const SizedBox(width: 10),
                    Text(
                      "Visit the webSite",
                      style: ThemeData.light()
                          .textTheme
                          .labelMedium!
                          .copyWith(color: ColorTheme.darkblue),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 25,
                    left: 30,
                    right: 30),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorTheme.white1,
                      prefixIcon:
                          const Icon(Icons.search, color: ColorTheme.darkblue),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: ThemeData.light()
                          .textTheme
                          .labelLarge!
                          .copyWith(color: ColorTheme.lightwhite),
                      hintText: "Try find 'how to'"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 25,
                    left: 30,
                    right: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: ColorTheme.white1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isBuyerSelected = true;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: isBuyerSelected
                                ? ColorTheme.white
                                : ColorTheme.white1,
                          ),
                          child: Center(
                              child: Text("Buyer",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          color: isBuyerSelected
                                              ? ColorTheme.darkblue
                                              : ColorTheme.lightwhite))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isBuyerSelected = false;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 20,
                          width: MediaQuery.of(context).size.width / 2.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: !isBuyerSelected
                                ? ColorTheme.white
                                : ColorTheme.white1,
                          ),
                          child: Center(
                            child: Text(
                              "Estate Agent",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      color: !isBuyerSelected
                                          ? ColorTheme.darkblue
                                          : ColorTheme.lightwhite),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: MediaQuery.of(context).size.height / 50,
                ),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    trailing: Icon(
                      isExpanded ? Icons.minimize : Icons.add,
                      color: ColorTheme.green,
                    ),
                    title: Text(
                      "What is Rise Real Estate?",
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: ColorTheme.darkblue),
                    ),
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: ColorTheme.white1,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                            "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                            " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. "
                            "aliquip ex ea commodo consequat. Duis aute irure dolor.",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: ColorTheme.blueheading,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                          ),
                        ),
                      )
                    ],
                    onExpansionChanged: (isExpanded) {
                      setState(() {
                        this.isExpanded = isExpanded;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 19, bottom: 10),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    trailing: Icon(_isExpanded ? Icons.minimize : Icons.add,
                        color: ColorTheme.green),
                    title: Text(
                      "Why choose buy in Rise?",
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: ColorTheme.darkblue),
                    ),
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: ColorTheme.white1,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                            "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                            " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. "
                            "aliquip ex ea commodo consequat. Duis aute irure dolor.",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: ColorTheme.blueheading),
                          ),
                        ),
                      ),
                    ],
                    onExpansionChanged: (_isExpanded) {
                      setState(() {
                        this._isExpanded = _isExpanded;
                      });
                    },
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
