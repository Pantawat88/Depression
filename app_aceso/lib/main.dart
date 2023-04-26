import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:app_aceso/pages/login.dart';
import 'package:app_aceso/pages/login2.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:jwt_decoder/jwt_decoder.dart';

//void main() => runApp(const MyApp());


void main () async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(token: prefs.getString('token'),));
}

class MyApp extends StatelessWidget {
  final token;
  //const MyApp({super.key});
  const MyApp({
    @required this.token,
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
        home: WelcomeLogin2()
      //home: (JwtDecoder.isExpired(token) == false)?HomePage(token: token):WelcomeLogin2()
    );
  }
}
