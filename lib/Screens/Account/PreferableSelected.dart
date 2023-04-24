import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Account/PaymentPage.dart';

class PreferableSelected extends StatefulWidget {
  const PreferableSelected({Key? key}) : super(key: key);

  @override
  State<PreferableSelected> createState() => _PreferableSelectedState();
}

class _PreferableSelectedState extends State<PreferableSelected> {
  List<preferableData> images = [
    preferableData(image: 'images/ima.png', name: 'Apartment'),
    preferableData(image: 'images/image7.png', name: 'Villa'),
    preferableData(image: 'images/image6.png', name: 'House'),
    preferableData(image: 'images/image10.png', name: 'Cottage'),
    preferableData(image: 'images/image5.png', name: 'Apartment'),
    preferableData(image: 'images/image12.png', name: 'Villa'),
    preferableData(image: 'images/image13.png', name: 'House'),
    preferableData(image: 'images/image14.png', name: 'Cottage'),
    preferableData(image: 'images/image9.png', name: 'Apartment'),
    preferableData(image: 'images/image4.png', name: 'Villa')
  ];
  final int index = 0;
  List<bool> selectedIndex = [];


  @override
  void initState() {
    super.initState();
    selectedIndex = List.generate(images.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 24, right: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  )),
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorTheme.white1),
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 20),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 20),
                          child: SizedBox(
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Select your preferable",
                                    style: ThemeData.light()
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500,
                                            color: ColorTheme.darkblue)),
                                Text("real estate type ",
                                    style: ThemeData.light()
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w800,
                                            color: ColorTheme.blue)),
                                SizedBox(height: 20),
                                Text(
                                  "You can edit this later on your account setting.",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: ColorTheme.darktype),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 15,
                        left: MediaQuery.of(context).size.width / 20,
                        right: MediaQuery.of(context).size.width / 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 14,
                                crossAxisCount: 2),
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          final select = images[index];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex[index] = !selectedIndex[index];
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0)),
                              color: selectedIndex[index] == true
                                  ? ColorTheme.blue
                                  : ColorTheme.white1,
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                70,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                70,
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                90),
                                        child: Container(
                                            height: MediaQuery.of(context).size.height /4.8,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              image: DecorationImage(
                                                image: AssetImage(select.image),
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: MediaQuery.of(context).size.height / 80,
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                30),
                                        child: Text(
                                          select.name,
                                          style: ThemeData.light()
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: selectedIndex == true
                                                      ? ColorTheme.white
                                                      : ColorTheme.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Transform.scale(
                                      scale: 1.5,
                                      child: Checkbox(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        side: const BorderSide(
                                            width: 3, color: ColorTheme.white),
                                        checkColor: ColorTheme.white,
                                        activeColor: ColorTheme.green,
                                        value: selectedIndex[index],
                                        onChanged: (value) {
                                          setState(() {
                                            selectedIndex[index] = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.2),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorTheme.greenAccent),
                        shadowColor: MaterialStateProperty.all(ColorTheme.blue),
                        elevation: MaterialStateProperty.all(50),
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
                              builder: (context) => PaymentPage(),
                            ));
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
            ],
          ),
        ),
      ),
    );
  }
}
