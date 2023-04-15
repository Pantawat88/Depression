import 'package:app_aceso/pages/profile.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';


class SettingPage extends StatelessWidget {
  //const SettingPage({super.key});
  //const SettingPage({Key? key}) : super(key: key);
  const SettingPage({Key? key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Iback,
                        color: APrimaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => ProfilePage()),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 100),
                    Expanded(
                      child: Text(
                        'การตั้งค่า',
                        style: textHeading,
                      ),
                    ),


                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          )
      ),
    );
  }
}
