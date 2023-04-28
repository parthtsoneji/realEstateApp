import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';

class FestureEstate extends StatefulWidget {
  const FestureEstate({Key? key}) : super(key: key);

  @override
  State<FestureEstate> createState() => _FestureEstateState();
}

class _FestureEstateState extends State<FestureEstate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: ColorTheme.white1,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll(0),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )),
                          backgroundColor:
                          MaterialStateProperty.all(ColorTheme.white1),
                        ),
                        onPressed: () {},
                        child: Icon(Icons.settings,color: ColorTheme.blueheading,)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
