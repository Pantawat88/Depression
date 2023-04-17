import 'package:app_aceso/pages/feature/featurescreen.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:app_aceso/pages/nav.dart';
import 'package:app_aceso/pages/profile.dart';
import 'package:flutter/material.dart';

class FeaturePage extends StatefulWidget {
  const FeaturePage({Key? key}) : super(key: key);

  @override
  State<FeaturePage> createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage> {
  int _currentIndex = 1;

  void _onTap(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const FeatureScreen(),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
