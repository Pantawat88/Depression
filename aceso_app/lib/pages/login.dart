import 'package:flutter/material.dart';
import 'package:aceso_app/constants.dart';

class WelcomeLogin extends StatelessWidget {
  const WelcomeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage('assets/img1.png'),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                //appname
                Image(
                  image: AssetImage('assets/appname.png'),
                  height: 100,
                  width: 200,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40.0,
                  ),
                  child: buildEmail(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 16.0),
                  child: buildPassW(),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {},
                  // style: ElevatedButton.styleFrom(
                  //   backgroundColor: APrimaryColor,
                  // ),
                  child: Text('เข้าสู่ระบบ'),
                ),
              ],
            ),
          ),
          Container(
            child: Image(
              image: AssetImage('assets/img2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildEmail() => TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        hintText: "อีเมล",
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
    );

Widget buildPassW() => TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        hintText: "รหัสผ่าน",
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
    );
