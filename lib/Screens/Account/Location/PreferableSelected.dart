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
        body: Stack(
          children: [
            SingleChildScrollView(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24, top: 10),
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
                              elevation: const MaterialStatePropertyAll(0),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(RoundedRectangleBorder(
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
                        top: MediaQuery.of(context).size.height / 20, left: 30),
                    child: Text("Select your preferable",
                        style: ThemeData.light().textTheme.labelMedium!.copyWith(
                            color: ColorTheme.blueheading,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'real estate type',
                      style: ThemeData.light().textTheme.labelMedium!.copyWith(
                          color: ColorTheme.blue,
                          fontWeight: FontWeight.w800,
                          fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Text(
                        "You can edit this later on your account setting.",
                        style: ThemeData.light()
                            .textTheme
                            .labelMedium!
                            .copyWith(fontSize: 12, fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 20,
                        left: MediaQuery.of(context).size.width / 20,
                        right: MediaQuery.of(context).size.width / 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 12,
                            mainAxisExtent: MediaQuery.of(context).size.height / 3.1,
                            childAspectRatio:
                            MediaQuery.of(context).size.height / 900,
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                                  100,
                                              bottom: 20),
                                          child: Container(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                                  4.2,
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
                                                color: selectedIndex[index] ==
                                                    true
                                                    ? ColorTheme.white
                                                    : ColorTheme.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    selectedIndex[index] == true
                                        ? const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Image(
                                        image: AssetImage(
                                            "images/Component.png"),
                                        height: 25,
                                        width: 25,
                                      ),
                                    )
                                        : const Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Image(
                                        image:
                                        AssetImage("images/Radio.png"),
                                        height: 25,
                                        width: 25,
                                      ),
                                    )
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 100)
                ],
              ),
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
                      MaterialStateProperty.all(ColorTheme.green),
                      shadowColor: MaterialStateProperty.all(ColorTheme.blue),
                      elevation: MaterialStateProperty.all(50),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentPage(),
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
    );
  }
}
