import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/login.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_launcher_icons/xml_templates.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aceso',
      theme: ThemeData(
        primaryColor: APrimaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: APrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
        ),
      ),
      home: WelcomeLogin(),
    );
  }
}
