import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:realstateapp/Screens/Account/PreferableSelected.dart';

class PreferablePage extends StatefulWidget {
  const PreferablePage({Key? key}) : super(key: key);

  @override
  State<PreferablePage> createState() => _PreferablePageState();
}

class _PreferablePageState extends State<PreferablePage> {
  List<String> images = [
    'images/ima.png',
    'images/image2.png',
    'images/image3.png',
    'images/image4.png',
    'images/image5.png',
    'images/image6.png',
    'images/image7.png',
    'images/image8.png',
    'images/image9.png',
    'images/image10.png',
    'images/image11.png',
    'images/image12.png',
    'images/image13.png',
    'images/image14.png',
    'images/image15.png',
    'images/image16.png'
  ];

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
                            height: MediaQuery.of(context).size.height / 25),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 20),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 8,
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
                                            color: ColorTheme.hexablue)),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        35),
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
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: StaggeredGridView.countBuilder(
                      crossAxisCount: 3,
                      // number of grid columns
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.all(2),
                          child: Image(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                      staggeredTileBuilder: (int index) =>
                          StaggeredTile.count(1, index.isEven ? 1.8 : 1.2),
                      mainAxisSpacing: 2.0,
                      crossAxisSpacing: 2.0,
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
                            MaterialStateProperty.all(ColorTheme.deepaccent),
                        shadowColor:
                            MaterialStateProperty.all(ColorTheme.regterm),
                        elevation: MaterialStateProperty.all(50),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PreferableSelected(),));
                      },
                      child: Text(
                        "Show more",
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
