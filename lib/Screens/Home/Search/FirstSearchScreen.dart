import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';

class FirstSearchScreen extends StatefulWidget {
  const FirstSearchScreen({Key? key}) : super(key: key);

  @override
  State<FirstSearchScreen> createState() => _FirstSearchScreenState();
}

class _FirstSearchScreenState extends State<FirstSearchScreen> {

  final globalkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: globalkey,
          child: Column(children: [
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
                    style: ThemeData.light().textTheme.labelMedium!.copyWith(
                        color: ColorTheme.blueheading,
                        fontSize: MediaQuery.of(context).size.height / 48,
                        fontWeight: FontWeight.w700),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: ColorTheme.white1,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(ColorTheme.white1),
                      ),
                      onPressed: () {},
                      child: Center(
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
                  suffixIcon:
                  const Icon(Icons.search, color: ColorTheme.blueheading),
                  hintStyle: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w600,fontSize: 12,color: ColorTheme.blueheading),
                  hintText: "Minix",
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
