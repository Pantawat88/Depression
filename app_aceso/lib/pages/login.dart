import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/home.dart';
//import 'package:app_aceso/pages/register/create_avatar.dart';
import 'package:app_aceso/pages/register/register.dart';
import 'package:app_aceso/pages/widget/widget_Textfromfield.dart';
import 'package:app_aceso/pages/widget/widget_button.dart';
import 'package:flutter/material.dart';
import 'package:app_aceso/constants.dart';

class WelcomeLogin extends StatelessWidget {
  WelcomeLogin({super.key});


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
                  child: TFFemail(),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                  child: TFFpassword(),
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
}
