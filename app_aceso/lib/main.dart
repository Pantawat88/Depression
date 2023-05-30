import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:app_aceso/pages/login.dart';
import 'package:app_aceso/pages/login2.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:jwt_decoder/jwt_decoder.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
}):super(key: key);

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
      home:WelcomeLogin2()
      //home: (JwtDecoder.isExpired(token) == false)?HomePage(token: token):WelcomeLogin2()
    );
  }
}
