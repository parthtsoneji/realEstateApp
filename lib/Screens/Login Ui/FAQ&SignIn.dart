import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';

class LoginForm4 extends StatefulWidget {
  const LoginForm4({Key? key}) : super(key: key);

  @override
  State<LoginForm4> createState() => _LoginForm4State();
}

class _LoginForm4State extends State<LoginForm4> {
  bool isExpanded = false;
  bool _isExpanded = false;
  bool isBuyerSelected = true;

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
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12),
                  child: Row(
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
                      const SizedBox(width: 7),
                      Text("&",
                          style: ThemeData.light()
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 25, color: ColorTheme.hexablue)),
                      const SizedBox(width: 7),
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
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 25),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12),
                  child: Text("Find answer to your problem using this app",
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorTheme.darktype)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: ColorTheme.hexablue,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12),
                  child: Row(
                    children: [
                      const CircleAvatar(
                          backgroundColor: ColorTheme.hexablue,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12),
                  child: Row(
                    children: [
                      const CircleAvatar(
                          backgroundColor: ColorTheme.hexablue,
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
                SizedBox(height: MediaQuery.of(context).size.height / 25),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search,
                            color: ColorTheme.darkblue),
                        border: InputBorder.none,
                        hintStyle: ThemeData.light()
                            .textTheme
                            .labelLarge!
                            .copyWith(color: ColorTheme.lightwhite),
                        hintText: "Try find 'how to'"),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width,
                        color: ColorTheme.white1,
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
                                color: isBuyerSelected
                                    ? ColorTheme.white
                                    : ColorTheme.trasnparent,
                                child: Center(
                                    child: Text("Buyer",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                color: isBuyerSelected
                                                    ? ColorTheme.darkblue
                                                    : ColorTheme.trasnparent))),
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
                                color: !isBuyerSelected
                                    ? ColorTheme.white
                                    : ColorTheme.trasnparent,
                                child: Center(
                                    child: Text("Estate Agent",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                color: !isBuyerSelected
                                                    ? ColorTheme.darkblue
                                                    : ColorTheme.trasnparent))),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      ExpansionTile(
                        trailing: Icon(
                          isExpanded ? Icons.minimize : Icons.add,
                          color: ColorTheme.greenadd,
                        ),
                        title: Text("What is Rise Real Estate?",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: ColorTheme.darkblue)),
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. "
                                "aliquip ex ea commodo consequat. Duis aute irure dolor.",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: ColorTheme.darktype,
                                        fontSize: 12)),
                          )
                        ],
                        onExpansionChanged: (isExpanded) {
                          setState(() {
                            this.isExpanded = isExpanded;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      ExpansionTile(
                        trailing: Icon(_isExpanded ? Icons.minimize : Icons.add,
                            color: ColorTheme.greenadd),
                        title: Text("Why choose buy in Rise?",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: ColorTheme.darkblue)),
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. "
                                "aliquip ex ea commodo consequat. Duis aute irure dolor.",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        color: ColorTheme.darktype,
                                        fontSize: 12)),
                          ),
                        ],
                        onExpansionChanged: (_isExpanded) {
                          setState(() {
                            this._isExpanded = _isExpanded;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
