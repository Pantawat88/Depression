import 'package:app_aceso/pages/feature/featurescreen.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:app_aceso/pages/nav.dart';
import 'package:app_aceso/pages/profile.dart';
import 'package:flutter/material.dart';

class FeaturePage extends StatefulWidget {
  FeaturePage({Key? key}) : super(key: key);

  @override
  State<FeaturePage> createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  //SharedPreferences prefs = await SharedPreferences.getInstance();
  //runApp(FeaturePage(token: prefs.getString('token'),));
  //var myToken = prefs.getString('token')



  int _currentIndex = 1;
  void _onTap(int index) {


    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FeatureScreen(),
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: _onTap
      ),
    );
  }
}
