import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realstateapp/Screens/Home/Search/FourthSearchScreen.dart';


class ThirdeSearchScreen extends StatefulWidget {
  const ThirdeSearchScreen({Key? key}) : super(key: key);

  @override
  State<ThirdeSearchScreen> createState() => _ThirdeSearchScreenState();
}

class _ThirdeSearchScreenState extends State<ThirdeSearchScreen> {


  final _globalkey = GlobalKey();
  GoogleMapController? mapController;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 5,
  );

  bool _isShow = false;
  BitmapDescriptor? userIcon;

  Future<void> _loadUserIcon() async {
    const imageConfiguration = ImageConfiguration(devicePixelRatio: 2.5);
    final BitmapDescriptor bitmapDescriptor =
    await BitmapDescriptor.fromAssetImage(
        imageConfiguration, 'images/User.png');
    setState(() {
      userIcon = bitmapDescriptor;
    });
  }

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
          child: Stack(children: [
            GoogleMap(
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
                    position: const LatLng(23.033863, 72.585022),
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
                  )
                },
                initialCameraPosition: _kGooglePlex),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 18,
                  top: MediaQuery.of(context).size.height / 35),
              child:  GestureDetector(
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
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorTheme.white,
                    prefixIcon: const Icon(Icons.search,
                        color: ColorTheme.darkblue, size: 30),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: ThemeData.light().textTheme.labelLarge!.copyWith(
                        color: ColorTheme.white1,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),
                    hintText: "Find location",
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 40,
                            width: 2.0,
                            color: ColorTheme.white1,
                            margin:
                            const EdgeInsets.only(left: 10.0, right: 10.0),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: Icon(Icons.mic, color: ColorTheme.lightwhite),
                        ),
                      ],
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 7),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Visibility(
                  visible: _isShow,
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
                                      size: 20, color: ColorTheme.blueheading),
                                ),
                              ),
                              const SizedBox(width: 15),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 20,
                                width: MediaQuery.of(context).size.width / 2,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(text: "Jl. Pandanaran, Semarang Tengah, Semarang City, Central Java 50241",style: ThemeData.light().textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w400,fontSize: 12,color: ColorTheme.lightdark))
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 1.8,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor:
                      MaterialStateProperty.all(ColorTheme.green),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FourthSearchScreen(),));
                    },
                    child: Text(
                      "Choose Line",
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
          ]),
        ),
      ),
          floatingActionButton: FloatingActionButton(
            elevation: 0,
            onPressed: () {},
            backgroundColor: ColorTheme.blueAccent,
            child: const Image(
              image: AssetImage("images/Center.png"),
              fit: BoxFit.cover,
            ),
          ),

    );
  }
}
