import 'package:flutter/material.dart';
import 'package:instagram_app/constant/constant.dart';
import 'package:instagram_app/screens/add_post_screen.dart';
import 'package:instagram_app/screens/home_screen.dart';
import 'package:instagram_app/screens/profile_screen.dart';
import 'package:instagram_app/screens/sctivity_screen.dart';
import 'package:instagram_app/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: darkGrayColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
          
            elevation: 1,
            onTap: (int index) {
              setState(() {
                _selectedBottomNavigationItem = index;
              });
            },
            currentIndex: _selectedBottomNavigationItem,
          
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_home.png',
                ),
                activeIcon: Image.asset(
                  'assets/images/icon_active_home.png',
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_search_navigation.png',
                ),
                activeIcon: Image.asset(
                  'assets/images/icon_search_navigation_active.png',
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_add_navigation.png',
                ),
                activeIcon: Image.asset(
                  'assets/images/icon_add_navigation_active.png',
                ),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/icon_activity_navigation.png',
                ),
                activeIcon: Image.asset(
                  'assets/images/icon_activity_navigation_active.png',
                ),
                label: 'Likes',
              ),
              BottomNavigationBarItem(
                icon: _getNavigationProfileIcon(
                  iconColor: greyColor,
                ),
                activeIcon: _getNavigationProfileIcon(
                  iconColor: pinkColor,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedBottomNavigationItem,
          children: _layouts(),
        ),
      ),
    );
  }

  List<Widget> _layouts() {
    return <Widget>[
      HomeScreen(),
      SearchScreen(),
      AddPostScreen(),
      ActivityScreenScreen(),
      ProfileScreen()
    ];
  }

  Widget _getNavigationProfileIcon({required Color iconColor}) {
    return Container(
      width: 29,
      height: 29,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: iconColor,
          width: 1,
        ),
      ),
      child: Image.asset(
        'assets/images/profile.png',
      ),
    );
  }
}
