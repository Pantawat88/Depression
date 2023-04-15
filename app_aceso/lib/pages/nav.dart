import 'package:app_aceso/constants.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavBar({super.key, required this.currentIndex, required this.onTap});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: APrimaryColor,
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedFontSize: 0,
      currentIndex: widget.currentIndex,
      onTap: widget.onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 30,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.category_rounded,
            size: 30,
          ),
          label: 'feature',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_rounded,
            size: 30,
          ),
          label: 'profile',
        ),
      ],
    );
  }
}
