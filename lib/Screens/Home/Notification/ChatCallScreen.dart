import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Home/Notification/ChatBox.dart';

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
        backgroundColor: ColorTheme.white2,
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
              padding: const EdgeInsets.only(top: 34),
              child: Center(
                  child: Text(
                "Milano",
                style: ThemeData.light().textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: ColorTheme.blueheading,
                    fontSize: 25),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 2.23, top: 8),
              child: Container(
                height: MediaQuery.of(context).size.height / 30,
                width: MediaQuery.of(context).size.width / 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorTheme.blue.withOpacity(0.69)),
                child: Center(
                    child: Text(
                  "12:25",
                  style: ThemeData.light().textTheme.labelSmall!.copyWith(
                      fontSize: 10,
                      color: ColorTheme.white,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
            const SizedBox(height: 90),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                Stack(
                  children: [
                    Container(
                      height: 192,
                      width: 192,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("images/Notification/color.png"))),
                      child: const Image(
                          image: AssetImage("images/Notification/notify7.png")),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
              ],
            ),
            const Expanded(child: SizedBox()),

            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 15),
              child: Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorTheme.white1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: const [
                        Expanded(child: SizedBox()),
                        CircleAvatar(
                          backgroundColor: ColorTheme.white,
                          radius: 25,
                          child: Center(
                              child: Icon(
                            Icons.chat,
                            color: ColorTheme.blueheading,
                          )),
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(
                          backgroundColor: ColorTheme.white,
                          radius: 25,
                          child: Center(
                              child: Icon(
                            Icons.mic_off,
                            color: ColorTheme.blueheading,
                          )),
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                    GestureDetector(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatBoxScreen(),));
                     },
                      child: Container(
                        height: MediaQuery.of(context).size.height /11,
                        width: MediaQuery.of(context).size.width /2.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorTheme.green,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("End Call",style: ThemeData.light().textTheme.labelMedium!.copyWith(color: ColorTheme.white,fontWeight: FontWeight.w700,fontSize: 16),),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: ColorTheme.white.withOpacity(0.22),
                              child: const Icon(Icons.call_end,color: ColorTheme.white,),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
