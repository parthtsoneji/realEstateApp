import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';

class ChatCallScreen extends StatefulWidget {
  const ChatCallScreen({Key? key}) : super(key: key);

  @override
  State<ChatCallScreen> createState() => _ChatCallScreenState();
}

class _ChatCallScreenState extends State<ChatCallScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
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
              padding: EdgeInsets.only(top: 34),
              child: Center(child: Text("Milano",style: ThemeData.light().textTheme.labelMedium!.copyWith(fontWeight: FontWeight.w700,color: ColorTheme.blueheading,fontSize: 25),)),
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 2.23,top: 8),
              child: Container(
                height: MediaQuery.of(context).size.height / 30,
                width: MediaQuery.of(context).size.width / 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorTheme.blue.withOpacity(0.69)
                ),
                child: Center(child: Text("12:25",style: ThemeData.light().textTheme.labelSmall!.copyWith(fontSize: 10,color: ColorTheme.white,fontWeight: FontWeight.w500),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
