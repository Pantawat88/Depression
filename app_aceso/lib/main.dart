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
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: APrimaryColor),
              borderRadius: BorderRadius.circular(12.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: APrimaryLightColor, width: 2),
              borderRadius: BorderRadius.circular(12.0)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
        ),
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: WelcomeLogin(),
      ),
    );
  }
}
