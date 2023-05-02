import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Notification/ChatBox.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<categoryName> categoryname = [
    categoryName(name: "All"),
    categoryName(name: "Review"),
    categoryName(name: "Sold"),
    categoryName(name: "House")
  ];

  List<Notificationdetail> notify = [
    Notificationdetail(
        "images/Notification/notify1.png",
        "Emmett Perry",
        "Just messaged you. Check the message in message tab.",
        "10 mins ago",
        ""),
    Notificationdetail(
        "images/Notification/notify4.png",
        "Geraldo",
        "Just giving 5 Star review on your listing Fairview Apartment",
        "40 mins ago",
        "images/Notification/notifi1.png"),
    Notificationdetail(
        "images/Notification/notify3.png",
        "Walter Lindsey",
        "Just buy your listing Schoolview House",
        "4 Hours ago",
        "images/Notification/notifi2.png")
  ];

  List<Notificationdetail> oldnotify = [
    Notificationdetail(
        "images/Notification/notify2.png",
        "Velma Cole",
        "Just favorited your listing Schoolview House.",
        "2 Days ago",
        "images/Notification/notifi3.png"),
  ];
  List<ChatList> chatlist = [
    ChatList("images/Notification/notify1.png", "Milano",
        "tempor incididunt ut labore et dolore", "10.45", "1"),
    ChatList("images/Notification/notify2.png", "Samuel Ella",
        "Lorem ipsum dolor sit amet", "11:00", ""),
    ChatList("images/Notification/notify3.png", "Emmet Perry",
        "Excepteur sint occaecat cupidatat non", "12.50", ""),
    ChatList("images/Notification/notify4.png", "Walter Lindsey",
        "Quis nostrud exercitation ullamco", "1 Day ago", ""),
    ChatList("images/Notification/notify5.png", "Velma Cole",
        "Excepteur sint occaecat cupidatat non", "2 Days ago", ""),
    ChatList("images/Notification/notify6.png", "Geraldo",
        "tempor incididunt ut labore et dolore", "3 Days ago", "")
  ];

  bool isExpanded = false;
  bool isBuyerSelected = true;
  int selectedIndex = 0;
  int index = 0;
  bool _isVisible = true;
  bool _isVisible1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
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
                      const SizedBox(
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: ColorTheme.white1,
                          child: Icon(
                            Icons.delete,
                            size: 20,
                            color: ColorTheme.blueheading,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: ColorTheme.white1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isBuyerSelected = true;
                              _isVisible = true;
                              _isVisible1 = false;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 2.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: isBuyerSelected
                                  ? ColorTheme.white
                                  : ColorTheme.white1,
                            ),
                            child: Center(
                                child: Text("Notification",
                                    style: ThemeData.light()
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: isBuyerSelected
                                                ? ColorTheme.blueheading
                                                : ColorTheme.lightwhite))),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isBuyerSelected = false;
                              _isVisible = false;
                              _isVisible1 = true;
                            });
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 18,
                            width: MediaQuery.of(context).size.width / 2.8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: !isBuyerSelected
                                  ? ColorTheme.white
                                  : ColorTheme.white1,
                            ),
                            child: Center(
                              child: Text(
                                "Messages",
                                style: ThemeData.light()
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: !isBuyerSelected
                                            ? ColorTheme.blueheading
                                            : ColorTheme.lightwhite),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _isVisible,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categoryname.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 15,
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: selectedIndex == index
                                            ? ColorTheme.darkblue
                                            : ColorTheme.white1),
                                    child: Center(
                                      child: Text(categoryname[index].name,
                                          style: ThemeData.light()
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                  color: selectedIndex == index
                                                      ? ColorTheme.white
                                                      : ColorTheme.blueheading,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10)),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Today",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.blueheading,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 1.8,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: notify.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final select = notify[index];
                              return Dismissible(
                                key: UniqueKey(),
                                direction: DismissDirection.endToStart,
                                onDismissed: (direction) {
                                  setState(() {
                                    notify.removeAt(index);
                                  });
                                },
                                background: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: ColorTheme.darkblue,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 33),
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(Icons.delete,
                                              color: ColorTheme.white, size: 30)),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: ColorTheme.white1,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorTheme.transparent,
                                            backgroundImage:
                                                AssetImage(select.image),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12, left: 5),
                                          child: SizedBox(
                                            height: 150,
                                            width: select.image2.isEmpty
                                                ? MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2.2
                                                : 250,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  select.name,
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: ColorTheme
                                                              .blueheading),
                                                ),
                                                Text(
                                                  select.message,
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: ColorTheme
                                                              .greyopasity),
                                                ),
                                                Text(
                                                  select.time,
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelSmall!
                                                      .copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: ColorTheme
                                                              .lightwhite),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        select.image2 != null &&
                                                select.image2.isNotEmpty
                                            ? Padding(
                                                padding: EdgeInsets.only(
                                                    top: 24,
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        14),
                                                child: SizedBox(
                                                    height: 50,
                                                    width: 60,
                                                    child: Image(
                                                        image: ExactAssetImage(
                                                            select.image2))),
                                              )
                                            : const SizedBox(
                                                height: 1,
                                                width: 1,
                                              ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Older notifications",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.blueheading,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: oldnotify.length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final oldselect = oldnotify[index];
                              return Dismissible(
                                key: UniqueKey(),
                                direction: DismissDirection.endToStart,
                                onDismissed: (direction) {
                                  setState(() {
                                    oldnotify.removeAt(index);
                                  });
                                },
                                background: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: ColorTheme.darkblue,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 33),
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(Icons.delete,
                                              color: ColorTheme.white, size: 30)),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height / 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: ColorTheme.white1,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                ColorTheme.transparent,
                                            backgroundImage:
                                                AssetImage(oldselect.image),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12, left: 5),
                                          child: SizedBox(
                                            height: 150,
                                            width: 230,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  oldselect.name,
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: ColorTheme
                                                              .blueheading),
                                                ),
                                                Text(
                                                  oldselect.message,
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: ColorTheme
                                                              .greyopasity),
                                                ),
                                                Text(
                                                  oldselect.time,
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelSmall!
                                                      .copyWith(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: ColorTheme
                                                              .lightwhite),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  14,
                                              top: 24),
                                          child: SizedBox(
                                              height: 50,
                                              width: 60,
                                              child: Image(
                                                  image: AssetImage(
                                                      oldselect.image2))),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: _isVisible1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "All chats",
                          style: ThemeData.light()
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: ColorTheme.blueheading,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: chatlist.length,
                            itemBuilder: (context, index) {
                              final select = chatlist[index];
                              return Dismissible(
                                key: UniqueKey(),
                                direction: DismissDirection.endToStart,
                                onDismissed: (direction) {
                                  setState(() {
                                    chatlist.removeAt(index);
                                  });
                                },
                                background: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height / 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: ColorTheme.darkblue,
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(right: 33),
                                      child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(Icons.delete,
                                              color: ColorTheme.white, size: 30)),
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height / 12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      color: ColorTheme.white1
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatBoxScreen(),));
                                            },
                                            child: CircleAvatar(
                                              radius: 25,
                                             backgroundImage: AssetImage(select.image),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: SizedBox(
                                              width: MediaQuery.of(context).size.width / 2,
                                              height: MediaQuery.of(context).size.height / 22,
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(text: select.name,style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: MediaQuery.of(context).size.width / 35,color: ColorTheme.blueheading,fontWeight: FontWeight.w700)),
                                                    const WidgetSpan(child: SizedBox(height: 4)),
                                                    TextSpan(text: "\n" + select.message,style: ThemeData.light().textTheme.labelLarge!.copyWith(fontSize: MediaQuery.of(context).size.width / 50,color: ColorTheme.greyopasity,fontWeight: FontWeight.w500))
                                                  ]
                                                ),
                                              ) ,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 6),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                    width: 34,
                                                    height: 16,
                                                    child: Text(select.time,style: ThemeData.light().textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w400,color: ColorTheme.lightwhite,fontSize: 8),)),
                                                select.no.isNotEmpty && select.no != null ?  CircleAvatar(
                                                  backgroundColor: ColorTheme.green,
                                                  radius: 9,
                                                  child: Center(child: Text(select.no,style: ThemeData.light().textTheme.labelSmall!.copyWith(fontSize: 8,fontWeight: FontWeight.w400,color: ColorTheme.white),)),
                                                ) :
                                                const CircleAvatar(
                                                  radius: 1,
                                                  backgroundColor: ColorTheme.transparent,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
