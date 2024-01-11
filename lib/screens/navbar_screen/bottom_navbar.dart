import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pemmob_app/screens/home_screen/home_screen.dart';
import 'package:pemmob_app/screens/home_screen/account_screen.dart';
import 'package:pemmob_app/screens/home_screen/inbox_screen.dart';
import 'package:pemmob_app/screens/home_screen/menu_math_screen.dart';
import 'package:pemmob_app/utils/constants.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  List pages = [
    const HomeScreen(),
    const MenuMathScreen(),
    InboxScreen(),
    const AccountScreen(),
  ];

  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bar_chart),
            label: 'Menu Math',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kPrimaryColor.withOpacity(0.4),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
