import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Account/Location/LocationMap.dart';
import 'package:realstateapp/Screens/Account/Location/Preferable.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 10),
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
                    SizedBox(
                      height: 38,
                      width: 86,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStatePropertyAll(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all(ColorTheme.white1),
                        ),
                        onPressed: () {},
                        child: Text(
                          "skip",
                          style: ThemeData.light()
                              .textTheme
                              .labelSmall!
                              .copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: ColorTheme.skip),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 20, left: 24),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Add your",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: ColorTheme.darkblue),
                      ),
                      const WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: "location",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: ColorTheme.blueAccent),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 25, left: 24),
                child: Text("You can edit this later on your account setting.",
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorTheme.blueheading)),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              Center(
                child: Stack(children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.6,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image.asset(
                        "images/Map.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 3.1),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 15,
                              spreadRadius: 1,
                              offset: const Offset(1, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(25.0),
                          color: ColorTheme.white.withOpacity(0.5)),
                      child: Center(
                        child: Text(
                          "select on map",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: ColorTheme.darkblue),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GoogleMapLoc(),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 11.5,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: ColorTheme.white1,
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width / 18),
                        const Icon(
                          Icons.location_on,
                          color: ColorTheme.blue,
                          size: 22,
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 40),
                        Text(
                          "Location detail",
                          style:
                              ThemeData.light().textTheme.labelLarge!.copyWith(
                                    color: ColorTheme.lightwhite,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                          color: ColorTheme.lightwhite,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 16),
              const Center(
                child: SizedBox(
                  width: 100,
                  child: LinearProgressIndicator(
                    value: 0.3,
                    backgroundColor: ColorTheme.white1,
                    valueColor: AlwaysStoppedAnimation<Color>(ColorTheme.blue),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorTheme.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PreferablePage(),
                          ),
                        );
                      },
                      child: Text(
                        "Next",
                        style: AppTheme.lightTheme()
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: ColorTheme.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15)
            ],
          ),
        ),
      ),
    );
  }
}
