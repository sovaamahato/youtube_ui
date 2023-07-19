import 'package:flutter/material.dart';
import 'package:youtube_ui/home_page.dart';

import 'pages/add_content_page.dart';
import 'pages/library_page.dart';
import 'pages/shorts_page.dart';
import 'pages/subscription_page.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  var _selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screenForBottomIcons = [
    HomePage(),
    ShortsPage(),
    AddContent(),
    SubscriptionPage(),
    LibraryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenForBottomIcons.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_camera_back,
                color: Colors.white,
              ),
              label: 'Shorts',
              backgroundColor: Colors.black87),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 40,
              
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.baby_changing_station,
              color: Colors.white,
            ),
            label: 'Subscriptions',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_file,
                color: Colors.white,
              ),
              label: 'Library',
              backgroundColor: Colors.black),
        ],
        currentIndex: _selectedIndex,
        onTap: onTap,
      ),
    );
  }
}
