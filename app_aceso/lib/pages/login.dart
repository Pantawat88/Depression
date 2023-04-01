import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:app_aceso/pages/register/register.dart';
import 'package:app_aceso/pages/widget/widget_Textfromfield.dart';
import 'package:flutter/material.dart';
import 'package:app_aceso/constants.dart';

class WelcomeLogin extends StatelessWidget {
  WelcomeLogin({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BackgroundForLogin(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //appname
          Image(
            height: 80,
            width: 180,
            image: AssetImage('assets/appname.png'),
          ),
          SizedBox(height: 25),
          //formLogin
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: const TFFemail(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 10.0),
                      child: const TFFpassword(),
                    ),
                  ],
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
                  child: Text(
                    'ลงทะเบียน',
                    style: tmini,
                  ),
                ),
                Expanded(
                  child: Text(
                    'ลืมรหัสผ่าน?',
                    style: tmini,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          //ปุ่มเข้าสู่ระบบ
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return HomePage();
                    }),
                  );
                }
              },
              child: Text(
                'เข้าสู่ระบบ',
                style: tButton,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
