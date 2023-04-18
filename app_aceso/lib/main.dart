import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/login.dart';
import 'package:flutter/material.dart';

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
