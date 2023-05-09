import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Class/classimage.dart';
import 'package:realstateapp/Screens/Home/Search/FirstSearchScreen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _globalkey = GlobalKey();
  GoogleMapController? mapController;
  BitmapDescriptor? userIcon;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 5,
  );
  bool _isShow = true;
  bool _isgone = false;
  bool _isSearch = false;

  Future<void> _loadUserIcon() async {
    const imageConfiguration = ImageConfiguration(devicePixelRatio: 2.5);
    final BitmapDescriptor bitmapDescriptor =
        await BitmapDescriptor.fromAssetImage(
            imageConfiguration, 'images/User.png');
    setState(() {
      userIcon = bitmapDescriptor;
    });
  }

  List<FeatureImages> imagesFeature = [
    FeatureImages(name: "Villa", image: 'images/HomeImages/image26.png'),
    FeatureImages(image: "images/HomeImages/image25.png", name: "Apartment"),
    FeatureImages(image: "images/HomeImages/image13.png", name: "House"),
  ];

  @override
  void initState() {
    super.initState();
    _loadUserIcon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _globalkey,
          child: Stack(
            children: [
              _isSearch == true
                  ? Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorTheme.darkblue.withOpacity(0.67)),
                            child: GoogleMap(
                                zoomControlsEnabled: false,
                                compassEnabled: false,
                                mapToolbarEnabled: false,
                                mapType: MapType.normal,
                                onMapCreated: (GoogleMapController controller) {
                                  mapController = controller;
                                },
                                markers: userIcon == null
                                    ? {}
                                    : {
                                        Marker(
                                          markerId: const MarkerId('1'),
                                          position: const LatLng(
                                              23.033863, 72.585022),
                                          icon: userIcon!,
                                          onTap: () {
                                            setState(() {
                                              if (_isShow == false) {
                                                _isShow = true;
                                                _isgone = false;
                                              } else {
                                                _isShow = false;
                                                _isgone = true;
                                              }
                                            });
                                          },
                                        ),
                                  Marker(
                                    markerId: const MarkerId('2'),
                                    position: const LatLng(
                                        21.1702, 72.8311),
                                    icon: userIcon!,
                                    onTap: () {
                                      setState(() {
                                        if (_isShow == false) {
                                          _isShow = true;
                                          _isgone = false;
                                        } else {
                                          _isShow = false;
                                          _isgone = true;
                                        }
                                      });
                                    },
                                  ),
                                  Marker(
                                    markerId: const MarkerId('3'),
                                    position: const LatLng(
                                        22.3072, 73.1812),
                                    icon: userIcon!,
                                    onTap: () {
                                      setState(() {
                                        if (_isShow == false) {
                                          _isShow = true;
                                          _isgone = false;
                                        } else {
                                          _isShow = false;
                                          _isgone = true;
                                        }
                                      });
                                    },
                                  ),
                                      },
                                initialCameraPosition: _kGooglePlex),
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: GoogleMap(
                            zoomControlsEnabled: false,
                            compassEnabled: false,
                            mapToolbarEnabled: false,
                            mapType: MapType.normal,
                            onMapCreated: (GoogleMapController controller) {
                              mapController = controller;
                            },
                            markers: userIcon == null
                                ? {}
                                : {
                                    Marker(
                                      markerId: const MarkerId('1'),
                                      position:
                                          const LatLng(23.033863, 72.585022),
                                      icon: userIcon!,
                                      onTap: () {
                                        setState(() {
                                          if (_isShow == false) {
                                            _isShow = true;
                                            _isgone = false;
                                          } else {
                                            _isShow = false;
                                            _isgone = true;
                                          }
                                        });
                                      },
                                    ),
                              Marker(
                                markerId: const MarkerId('2'),
                                position: const LatLng(
                                    21.1702, 72.8311),
                                icon: userIcon!,
                                onTap: () {
                                  setState(() {
                                    if (_isShow == false) {
                                      _isShow = true;
                                      _isgone = false;
                                    } else {
                                      _isShow = false;
                                      _isgone = true;
                                    }
                                  });
                                },
                              ),
                              Marker(
                                markerId: const MarkerId('3'),
                                position: const LatLng(
                                    22.3072, 73.1812),
                                icon: userIcon!,
                                onTap: () {
                                  setState(() {
                                    if (_isShow == false) {
                                      _isShow = true;
                                      _isgone = false;
                                    } else {
                                      _isShow = false;
                                      _isgone = true;
                                    }
                                  });
                                },
                              ),
                                  },
                            initialCameraPosition: _kGooglePlex),
                      ),
                    ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 15,
                    top: 24,
                    right: 24),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: ColorTheme.white1),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(
                              image: AssetImage("images/User.png"),
                              height: 13),
                          const SizedBox(width: 3),
                          Text(
                            "Jakarta, Indonesia",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: ColorTheme.blueheading),
                          ),
                          const SizedBox(width: 3),
                          const Icon(Icons.arrow_drop_down_outlined,
                              color: ColorTheme.blueheading),
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FirstSearchScreen(),));
                      },
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: ColorTheme.white1,
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

              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24, bottom: 200),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    width: MediaQuery.of(context).size.width / 3.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorTheme.darkblue),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: ColorTheme.green,
                          child: Text("!",
                              style: ThemeData.light()
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    fontSize: 20,
                                    color: ColorTheme.white,
                                  )),
                        ),
                        SizedBox(width: 8),
                        Text("Nearby You",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize: 12, color: ColorTheme.white))
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _isShow,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: 25,
                        left: MediaQuery.of(context).size.width / 15),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 5,
                      child: ListView.builder(
                        itemCount: imagesFeature.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 13),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 3,
                              width: 330,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: ColorTheme.white1),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                imagesFeature[index].image),
                                            fit: BoxFit.fill),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Image(
                                              image: AssetImage(
                                                  "images/HomeImages/heart.png"),
                                              height: 25,
                                              width: 25,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    13,
                                                left: 12),
                                            child: Container(
                                              height: 27,
                                              width: 63,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8),
                                                  color: ColorTheme.darkblue
                                                      .withOpacity(0.8)),
                                              child: Center(
                                                child: Text(
                                                    imagesFeature[index].name,
                                                    style: ThemeData.light()
                                                        .textTheme
                                                        .labelLarge!
                                                        .copyWith(
                                                            color: ColorTheme
                                                                .white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500,
                                                            fontSize: 10)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 18, left: 12, right: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 15),
                                        Text("The Laurels Villa",
                                            style: ThemeData.light()
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                                    color: ColorTheme
                                                        .blueheading,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                        const SizedBox(height: 13),
                                        Row(
                                          children: [
                                            const Icon(Icons.star,
                                                color: ColorTheme.staryellow,
                                                size: 12),
                                            Text(
                                              "4.9",
                                              style: ThemeData.light()
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: ColorTheme
                                                          .blueheading),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 8.5),
                                        Row(
                                          children: [
                                            const Image(
                                              image: AssetImage(
                                                  "images/User.png"),
                                              height: 17,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: Text(
                                                  "Jakarta, Indonesia",
                                                  style: ThemeData.light()
                                                      .textTheme
                                                      .labelLarge!
                                                      .copyWith(
                                                          color: ColorTheme
                                                              .darkblue,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight
                                                                  .w400)),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _isgone,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, bottom: 25),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorTheme.darkblue),
                      child: Center(
                        child: Text("Can’t found real estate nearby you",
                            style: ThemeData.light()
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize: 12,
                                    color: ColorTheme.white,
                                    fontWeight: FontWeight.w400)),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: MediaQuery.of(context).size.height / 7,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorTheme.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    cursorColor: Colors.green,
                    onTap: () {
                      if (_isSearch == false) {
                        setState(() {
                          _isSearch = true;
                        });
                      } else {
                        setState(() {
                          _isSearch = false;
                        });
                      }
                    },
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          _isSearch = true;
                        });
                      } else {
                        setState(() {
                          _isSearch = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorTheme.white1,
                      prefixIcon: _isSearch == false
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search,
                                  color: ColorTheme.darkblue, size: 30),
                            )
                          : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                      hintStyle: ThemeData.light()
                          .textTheme
                          .labelLarge!
                          .copyWith(
                              color: ColorTheme.lightwhite,
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                      hintText: "Search House, Apartment, etc",
                      suffixIcon: _isSearch == true
                          ? Icon(Icons.search,
                              color: ColorTheme.darkblue, size: 30)
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 40,
                                    width: 0.3,
                                    color: ColorTheme.lightwhite,
                                    margin: const EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, right: 15),
                                  child: Icon(Icons.mic,
                                      color: ColorTheme.lightwhite),
                                ),
                              ],
                            ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _isSearch,
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 4.2,
                            left: 24,
                            right: 24),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 3.8,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: ColorTheme.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 15, top: 20, right: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "Recent Search",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                              color: ColorTheme.blueheading,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      "clear",
                                      style: ThemeData.light()
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(
                                              fontSize: 10,
                                              color: ColorTheme.blue,
                                              fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 15, top: 20, right: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: ColorTheme.greyopasity),
                                      child: Center(
                                          child: Icon(
                                        Icons.timer_outlined,
                                        size: 15,
                                        color: ColorTheme.lightwhite,
                                      )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Modern house",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                color: ColorTheme.lightdark,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Icon(
                                      Icons.close,
                                      color: ColorTheme.lightwhite,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 15, top: 20, right: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: ColorTheme.greyopasity),
                                      child: Center(
                                          child: Icon(
                                        Icons.timer_outlined,
                                        size: 15,
                                        color: ColorTheme.lightwhite,
                                      )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Semarang",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                color: ColorTheme.lightdark,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Icon(
                                      Icons.close,
                                      color: ColorTheme.lightwhite,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 15, top: 20, right: 15),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: ColorTheme.greyopasity),
                                        child: Image(
                                          image: AssetImage(
                                              "images/Notification/notifi4.png"),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Sky Dandelions Apartment",
                                        style: ThemeData.light()
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                color: ColorTheme.lightdark,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Icon(
                                      Icons.close,
                                      color: ColorTheme.lightwhite,
                                    )
                                  ],
                                ),
                              )
                            ],
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
