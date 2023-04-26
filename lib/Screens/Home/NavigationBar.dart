import 'package:flutter/material.dart';
import 'package:realstateapp/AppTheme/Theme.dart';
import 'package:realstateapp/Screens/Home/AccountScreen.dart';
import 'package:realstateapp/Screens/Home/HomeScreen.dart';
import 'package:realstateapp/Screens/Home/LikeScreen.dart';
import 'package:realstateapp/Screens/Home/SearchScreen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    LikeScreen(),
    AccountScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        backgroundColor: ColorTheme.blueheading,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,color: ColorTheme.blueheading,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: ColorTheme.blueheading),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken,color: ColorTheme.blueheading),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: ColorTheme.blueheading),
            label: '',
          ),
        ],
      ),
    );
  }
}
