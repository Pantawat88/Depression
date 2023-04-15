import 'package:app_aceso/pages/profile.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'dart:math' as math;


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
                    const Expanded(
                      child: Text(
                        'การตั้งค่า',
                        style: textHeading,
                      ),
                    ),


                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      //--------------------------------ข้อมูลส่วนตัว--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            Image.asset('assets/person.png', height: 40, width: 40),
                            SizedBox(width: 20,),
                            Expanded(
                              child: TextButton(
                              onPressed: () {

                              },
                              child: Row(
                                children: <Widget>[
                                  const Text('ข้อมูลส่วนตัว', style: textHeading,),

                                  //--------------icon Iback กลับด้าน--------------
                                  IconButton(
                                    icon: Transform.rotate(
                                      angle: math.pi,
                                      child: Icon(Icons.arrow_back, color: APrimaryColor),
                                    ),
                                    onPressed: () {
                                      // do something
                                    },
                                  ),



                                  //--------------icon Iback กลับด้าน--------------


                                ],
                              ),
                            ),
                            )

                          ],
                        ),
                      )
                      //--------------------------------ข้อมูลส่วนตัว--------------------------------


                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
