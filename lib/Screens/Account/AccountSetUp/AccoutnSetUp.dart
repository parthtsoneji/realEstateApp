import 'dart:io';
import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AccountSetUp extends StatefulWidget {
  const AccountSetUp({Key? key}) : super(key: key);

  @override
  State<AccountSetUp> createState() => _AccountSetUpState();
}

class _AccountSetUpState extends State<AccountSetUp> {

  final globalkey = GlobalKey();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final imagePicker = ImagePicker();
  File? imageFile;

  Future takePhoto(ImageSource source) async {
    var image = await imagePicker.getImage(source: source);
    setState(() {
      imageFile = File(image!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: globalkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
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
                                elevation: const MaterialStatePropertyAll(0),
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
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 20,
                            top: MediaQuery.of(context).size.height / 30),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Fill your",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500,
                                              color: ColorTheme.blueheading)),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          80),
                                  Text("information",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w800,
                                              color: ColorTheme.darkblue)),
                                ],
                              ),
                              Text("below",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          color: ColorTheme.blueheading)),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 35),
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
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                Stack(
                  children: [
                    imageFile == null ?
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: ColorTheme.white1,
                      backgroundImage: AssetImage("images/Userimage.png"),
                    ) : Container(
                      height: MediaQuery.of(context).size.height /7.3,
                      width: MediaQuery.of(context).size.width / 4.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.file(imageFile!,fit: BoxFit.cover),
                      ),
                    ),

                    //edit profile icon
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10.0)),
                          ),
                          builder: (context) => _bottomSheetBar(),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 11,
                            left: MediaQuery.of(context).size.width / 9),
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: ColorTheme.blueAccent,
                          backgroundImage: AssetImage("images/Editprofile.png"),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12,
                      right: MediaQuery.of(context).size.width / 12),
                  child: Column(
                    children: [
                      TextFormField(
                        cursorColor: ColorTheme.green,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: ColorTheme.white1,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: ColorTheme.green,
                            ),
                          ),
                          suffixIcon: const Icon(Icons.person,
                              color: ColorTheme.darkblue),
                          hintText: "Name",
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 40),
                      TextFormField(
                        cursorColor: ColorTheme.green,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: ColorTheme.white1,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: ColorTheme.green,
                            ),
                          ),
                          suffixIcon: const Icon(Icons.call,
                              color: ColorTheme.darkblue),
                          hintText: "+62 112-3288-9111",
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 40),
                      Container(
                        height: MediaQuery.of(context).size.height / 13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: ColorTheme.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "test123@gmail.com",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: ColorTheme.white),
                              ),
                              const Icon(
                                Icons.email_outlined,
                                color: ColorTheme.white,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 28),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                ColorTheme.greenAccent),
                            elevation: MaterialStateProperty.all(15),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          onPressed: () {},
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomSheetBar() {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text("Camera",style: ThemeData.light().textTheme.labelMedium!.copyWith(fontSize: 20,fontWeight: FontWeight.w400,color: ColorTheme.darkblue),),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              SizedBox(
                  height: MediaQuery.of(context).size.height / 13,width: MediaQuery.of(context).size.width / 3,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(ColorTheme.green)
                      ),
                      onPressed: () {
                        takePhoto(ImageSource.camera);
                      }, child: const Icon(Icons.camera))),
            ],
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 30),
          Column(
            children: [
              Text("Gallery",style: ThemeData.light().textTheme.labelMedium!.copyWith(fontSize: 20,fontWeight: FontWeight.w400,color: ColorTheme.darkblue),),
              SizedBox(height: MediaQuery.of(context).size.height / 30),
              SizedBox(
                  height: MediaQuery.of(context).size.height / 13,width: MediaQuery.of(context).size.width / 3,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(ColorTheme.green)
                      ),
                      onPressed: () {
                        takePhoto(ImageSource.gallery);
                      }, child: const Icon(Icons.image))),
            ],
          ),

        ],
      ),
    );
  }
}
