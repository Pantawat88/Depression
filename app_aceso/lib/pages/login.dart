import 'dart:convert';

import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/home.dart';
//import 'package:app_aceso/pages/register/create_avatar.dart';
import 'package:app_aceso/pages/register/register.dart';
import 'package:app_aceso/pages/widget/widget_Textfromfield.dart';
import 'package:app_aceso/pages/widget/widget_button.dart';
import 'package:flutter/material.dart';
import 'package:app_aceso/constants.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../config.dart';

class WelcomeLogin extends StatelessWidget {
  //WelcomeLogin({super.key});
  bool _isNotValidate = false;
  //late SharedPreferences prefs;

  // String backgroundImg = ''; //ไว้กำหนดพื้นหลังในหน้า home

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BackgroundForLogin(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //appname
          const Image(
            height: 80,
            width: 180,
            image: AssetImage('assets/appname.png'),
          ),
          const SizedBox(height: 40),
          //formLogin
          Form(
            key: _formKey,
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: TFFemailLogin(), //แก้จากTFFemail()
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                  child: TFFpasswordLogin(), //แก้จาก TFFpassword
                ),
              ],
            ),
          ),

          //ลงทะเบียนและลืมรหัสผ่าน
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: const Text(
                    'ลงทะเบียน',
                    style: textsmallbold,
                  ),
                ),
                const Expanded(
                  child: Text(
                    'ลืมรหัสผ่าน?',
                    style: textsmall,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          //ปุ่มเข้าสู่ระบบ
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              onPressed: () {
                
                if (_formKey.currentState!.validate()) {
                  
                  loginUser();
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const HomePage();
                    }),
                  );
                }
              },
              child: const ButtonOperation(
                BTname: 'เข้าสู่ระบบ',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void loginUser() async{

    if(emailLoginController.text.isNotEmpty && passwordLoginController.text.isNotEmpty){

      String email_login = emailLoginController.text;
      String pass_login = passwordLoginController.text;
      //เนื้อหาการลงทะเบียน

      var reqBody ={
        "email":email_login,
        "password":pass_login
      };

      var response = await http.post(Uri.parse(login),
          headers: {"Content-Type":"application/json"},
          body: jsonEncode(reqBody) //แปลงอีเมลและรหัสผ่านเป็น json
      );

      var jsonResponse = jsonDecode(response.body);
      if(jsonResponse['status']){

      }else{
        print('Something went wrong');
        
      }


    }


  }
}
