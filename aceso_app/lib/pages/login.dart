import 'package:aceso_app/background.dart';
import 'package:aceso_app/pages/home.dart';
import 'package:aceso_app/pages/register/register.dart';
import 'package:flutter/material.dart';
import 'package:aceso_app/constants.dart';

class WelcomeLogin extends StatelessWidget {
  WelcomeLogin({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Background(
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
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: buildEmail(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10.0),
                      child: buildPassW(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //ลงทะเบียนและลืมรหัสผ่าน
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
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
                    style: TextStyle(
                      color: APrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'ลืมรหัสผ่าน?',
                    style: TextStyle(
                      color: APrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          //ปุ่มเข้าสู่ระบบ
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
              child: Text('เข้าสู่ระบบ'),
            ),
          ),
        ],
      ),
    );
  }

  ////////// Widget สำหรับกรอกอีเมล
  Widget buildEmail() => TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'กรุณากรอกอีเมลก่อน';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        cursorColor: APrimaryColor,
        decoration: InputDecoration(
          hintText: "อีเมล",
          hintStyle: TextStyle(
            color: APrimaryLightColor,
          ),
        ),
      );
  ////////// Widget สำหรับกรอกรหัสผ่าน
  Widget buildPassW() => TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'กรุณากรอกรหัสผ่านก่อน';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        cursorColor: APrimaryColor,
        decoration: InputDecoration(
          hintText: "รหัสผ่าน",
          hintStyle: TextStyle(
            color: APrimaryLightColor,
          ),
        ),
      );
}
