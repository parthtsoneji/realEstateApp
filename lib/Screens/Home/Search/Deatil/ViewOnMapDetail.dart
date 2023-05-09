import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Home/Search/Deatil/ReviewScreen.dart';

class ViewOnMapDetail extends StatefulWidget {
  const ViewOnMapDetail({Key? key}) : super(key: key);

  @override
  State<ViewOnMapDetail> createState() => _ViewOnMapDetailState();
}

class _ViewOnMapDetailState extends State<ViewOnMapDetail> {
  final _globalkey = GlobalKey();
  GoogleMapController? mapController;
  BitmapDescriptor? userIcon;
  BitmapDescriptor? userIcon2;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 5,
  );
  bool _isShow = true;
  List house = ["1 Hospital", "2 Gas Station", "1 Schools"];

  Future<void> _loadUserIcon() async {
    const imageConfiguration = ImageConfiguration(devicePixelRatio: 2.5);
    final BitmapDescriptor bitmapDescriptor =
    await BitmapDescriptor.fromAssetImage(
        imageConfiguration, 'images/User.png');
    setState(() {
      userIcon = bitmapDescriptor;
    });
  }
  Future<void> _loadUserGreenIcon() async {
    const imageConfiguration = ImageConfiguration(devicePixelRatio: 2.5);
    final BitmapDescriptor bitmapDescriptor =
    await BitmapDescriptor.fromAssetImage(
        imageConfiguration, 'images/Notification/greenloc.png');
    setState(() {
      userIcon2 = bitmapDescriptor;
    });
  }
  @override
  void initState() {
    super.initState();
    _loadUserIcon();
    _loadUserGreenIcon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
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

                                } else {
                                  _isShow = false;

                                }
                              });
                            },
                          ),
                          Marker(
                            markerId: const MarkerId('2'),
                            position: const LatLng(
                                21.1702, 72.8311),
                            icon: userIcon2!,
                            onTap: () {
                              setState(() {
                                if (_isShow == false) {
                                  _isShow = true;

                                } else {
                                  _isShow = false;

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

                                } else {
                                  _isShow = false;
                                }
                              });
                            },
                          ),
                          Marker(
                            markerId: const MarkerId('4'),
                            position: const LatLng(
                                22.1723, 71.6636),
                            icon: userIcon2!,
                            onTap: () {
                              setState(() {
                                if (_isShow == false) {
                                  _isShow = true;
                                } else {
                                  _isShow = false;
                                }
                              });
                            },
                          ),
                          Marker(
                            markerId: const MarkerId('5'),
                            position: const LatLng(
                                21.7645,72.1519),
                            icon: userIcon!,
                            onTap: () {
                              setState(() {
                                if (_isShow == false) {
                                  _isShow = true;
                                } else {
                                  _isShow = false;
                                }
                              });
                            },
                          ),
                        },
                        initialCameraPosition: _kGooglePlex),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 55,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: house.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final select = house[index];
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: ColorTheme.white1),
                              child: Center(
                                child: Text(
                                  select,
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: ColorTheme.lightdark),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 2
                    ),
                    child: Container(
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
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.4,
                        decoration: BoxDecoration(
                            color: ColorTheme.white,
                            borderRadius: BorderRadius.circular(25.0)),
                        height: MediaQuery.of(context).size.height / 6,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 50,
                              left: MediaQuery.of(context).size.width / 30),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Location detail",
                                  style: ThemeData.light()
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                      color: ColorTheme.darkblue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(height: 10),
                                Row(children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height / 14,
                                    width: MediaQuery.of(context).size.width / 10,
                                    child: const CircleAvatar(
                                      backgroundColor: ColorTheme.locationcolor,
                                      child: Icon(Icons.location_on_outlined,
                                          size: 20, color: ColorTheme.lightdark),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height / 20,
                                    width: MediaQuery.of(context).size.width / 2,
                                    child: RichText(
                                      text: TextSpan(
                                          children: [
                                            TextSpan(text: "St. Cikoko Timur, Kec. Pancoran, Jakarta Selatan, Indonesia 12770",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w400,fontSize: 12,color: ColorTheme.lightdark))
                                          ]
                                      ),
                                    ),
                                  )
                                ]),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 374,
                width: 374,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(187),
                    color: ColorTheme.blue.withOpacity(0.22)
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewScreen(),));
        },
        backgroundColor: ColorTheme.blueAccent,
        child: const Image(
          image: AssetImage("images/Center.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
