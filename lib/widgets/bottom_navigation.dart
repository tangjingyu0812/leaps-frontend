import 'package:flutter/material.dart';
import 'package:leaps_frontend/utils/colors.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.home,
      size: 150,
    ),
    Icon(
      Icons.favorite,
      size: 150,
    ),
    Icon(
      Icons.add,
      size: 150,
    ),
    Icon(
      Icons.star_rounded,
      size: 150,
    ),
    Icon(
      Icons.person,
      size: 150,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      unselectedFontSize: 14,
      selectedItemColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: primaryColor,
            ),
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: primaryColor),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.favorite,
              color: primaryColor,
            ),
            icon: Icon(Icons.favorite),
            label: 'For you',
            backgroundColor: primaryColor),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.add,
              color: primaryColor,
            ),
            icon: Icon(Icons.add),
            label: 'Create',
            backgroundColor: primaryColor),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.star_rounded,
              color: primaryColor,
            ),
            icon: Icon(
              Icons.star_rounded,
            ),
            label: 'Career',
            backgroundColor: primaryColor),
        BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: primaryColor,
            ),
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: primaryColor),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
