import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<categoryName> categoryname = [
    categoryName(name: "All"),
    categoryName(name: "House"),
    categoryName(name: "Apartment"),
    categoryName(name: "House")
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                width: MediaQuery.of(context).size.width / 1.4,
                child: const Image(
                  image: AssetImage('images/homeelips.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //location, notification & AccountButton
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 15, top: 24),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: ColorTheme.white1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                  image: const AssetImage("images/User.png"),
                                  height:
                                      MediaQuery.of(context).size.height / 30),
                              Text(
                                "Jakarta, Indonesia",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: ColorTheme.blueheading),
                              ),
                              const Icon(Icons.arrow_drop_down_outlined,
                                  color: ColorTheme.blueheading),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 3.2),
                            child: Container(
                                height: MediaQuery.of(context).size.height / 15,
                                width: MediaQuery.of(context).size.width / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: ColorTheme.white1,
                                ),
                                child: const Image(
                                  image: AssetImage("images/Notification.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 30),
                          child: Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width / 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                color: ColorTheme.white1,
                              ),
                              child: const Image(
                                image: AssetImage("images/userelips.png"),
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        left: 30, top: MediaQuery.of(context).size.height / 30),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Hey,",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: ColorTheme.blueheading),
                          ),
                          const WidgetSpan(child: SizedBox(width: 10)),
                          TextSpan(
                            text: "Jonathan!",
                            style: ThemeData.light()
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: ColorTheme.darkblue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Let's start exploring",
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          color: ColorTheme.blueheading,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: MediaQuery.of(context).size.height / 25,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorTheme.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: ColorTheme.white1,
                          prefixIcon: const Icon(Icons.search,
                              color: ColorTheme.darkblue, size: 30),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          hintStyle: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.lightwhite,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                          hintText: "Search House, Apartment, etc",
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  width: 1.0,
                                  color: ColorTheme.lightwhite,
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10, right: 15),
                                child: Icon(Icons.mic,
                                    color: ColorTheme.lightwhite),
                              ),
                            ],
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                        ),
                      ),
                    ),
                  ),

                  //List View for horizontale details
                  ListView.builder(
                    itemCount: categoryname.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.width * 0.1,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text(categoryname[index].name,
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: ColorTheme.blueheading,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10)),
                      );
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
