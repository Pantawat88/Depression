import 'package:app_aceso/pages/profile.dart';
import 'package:app_aceso/pages/profile/read_privacy_agreement.dart';
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
                            //Image.asset('assets/person.png', height: 40, width: 40),
                            //SizedBox(width: 20,),
                            Expanded(
                              child: TextButton(
                              onPressed: () {

                              },
                              child: Row(
                                children: <Widget>[
                                  Image.asset('assets/icon_settingpage/person-removebg-preview.png', height: 40, width: 40),
                                  SizedBox(width: 20,),
                                  const Text('ข้อมูลส่วนตัว', style: textHeading,),

                                ],
                              ),
                            ),
                            )

                          ],
                        ),
                      ),
                      //--------------------------------ข้อมูลส่วนตัว--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                      children: [
                        Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                      ],
                    ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      //--------------------------------เพื่อนซี้--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            //Image.asset('assets/person.png', height: 40, width: 40),
                            //SizedBox(width: 20,),
                            Expanded(
                              child: TextButton(
                                onPressed: () {

                                },
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/icon_settingpage/Friend-removebg-preview.png', height: 40, width: 40),
                                    SizedBox(width: 20,),
                                    const Text('เพื่อนซี้', style: textHeading,),

                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      //--------------------------------เพื่อนซี้--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      //--------------------------------นโยบายความเป็นส่วนตัว--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            //Image.asset('assets/person.png', height: 40, width: 40),
                            //SizedBox(width: 20,),
                            Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ReadPrivacy()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/icon_settingpage/Question-removebg-preview.png', height: 40, width: 40),
                                    SizedBox(width: 20,),
                                    const Text('นโยบายความเป็นส่วนตัว', style: textHeading,),

                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      //--------------------------------นโยบายความเป็นส่วนตัว--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      //--------------------------------รหัสผ่าน--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            //Image.asset('assets/person.png', height: 40, width: 40),
                            //SizedBox(width: 20,),
                            Expanded(
                              child: TextButton(
                                onPressed: () {

                                },
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/icon_settingpage/Security-removebg-preview.png', height: 40, width: 40),
                                    SizedBox(width: 20,),
                                    const Text('รหัสผ่าน', style: textHeading,),

                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      //--------------------------------รหัสผ่าน--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      //--------------------------------ลบบัญชี--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            //Image.asset('assets/person.png', height: 40, width: 40),
                            //SizedBox(width: 20,),
                            Expanded(
                              child: TextButton(
                                onPressed: () {

                                },
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/icon_settingpage/trashcan-removebg-preview.png', height: 40, width: 40),
                                    SizedBox(width: 20,),
                                    const Text('ลบบัญชี', style: textHeading,),

                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      //--------------------------------ลบบัญชี--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      SizedBox(height: 380,width: 1,),

                      //--------------------------------ออกจากระบบ--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            //Image.asset('assets/person.png', height: 40, width: 40),
                            //SizedBox(width: 20,),
                            Expanded(child: ElevatedButton(
                                onPressed: () {

                                },
                                child: SizedBox(
                                  width: 305,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      'ออกจากระบบ',
                                      style: textButton,
                                    ),
                                  ),
                                )
                              ),
                            ),

                          ],
                        ),
                      ),

                      //--------------------------------ออกจากระบบ--------------------------------


















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
