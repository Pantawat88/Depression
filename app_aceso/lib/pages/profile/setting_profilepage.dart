import 'package:app_aceso/pages/profile/edit_profile.dart';
import 'package:app_aceso/pages/profile/settingpage.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../widget/widget_button.dart';


class SettingProfilepage extends StatelessWidget {
  //const SettingPage({super.key});
  //const SettingPage({Key? key}) : super(key: key);
  const SettingProfilepage({Key? key});


  @override
  Widget build(BuildContext context) {
    final String email = '63015123@kmitl.ac.th';
    final String Fullname = 'Pantawat Thunanukul';
    final String Nickname = 'Leng';
    final String Faculty = 'วิศวกรรมศาสตร์';
    final String Birthday = '18 เมษายน 2000';
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
                            MaterialPageRoute(builder: (context) => const SettingPage()),
                          );

                        },
                      ),
                    ),
                    const SizedBox(width: 100),
                    const Expanded(
                      child: Text(
                        'ข้อมูลส่วนตัว',
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
                      //--------------------------------อีเมล--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[

                            Expanded(
                              child: Row(
                                  children: <Widget>[
                                    SizedBox(width: 20,),
                                    Text('อีเมล',style: textHeading,),
                                    SizedBox(width: 42,),
                                    Text(email, style: textnormalLight,),
                                  ],
                                ),
                            )

                          ],
                        ),
                      ),

                      SizedBox(height: 5),

                      //--------------------------------อีเมล--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                      SizedBox(height: 10,width: 95,),
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),
                          ),
                          )
                          ),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      //--------------------------------ชื่อ-สกุล--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            Expanded(
                            child: Row(
                              children: <Widget>[
                                SizedBox(height: 40,),
                                SizedBox(width: 20,),
                                Text('ชื่อ-สกุล',style: textHeading,),
                                SizedBox(width: 16,),
                                Text(Fullname, style: textnormal,),
                              ],
                            ),
                          )

                          ],
                        ),
                      ),
                      //--------------------------------ชื่อ-สกุล--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                          SizedBox(height: 10,width: 95,),
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      //--------------------------------ชื่อเล่น--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  SizedBox(height: 40,),
                                  SizedBox(width: 20,),
                                  Text('ชื่อเล่น',style: textHeading,),
                                  SizedBox(width: 30,),
                                  Text(Nickname, style: textnormal,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      //--------------------------------ชื่อเล่น--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                          SizedBox(height: 10,width: 95,),
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      //--------------------------------คณะ--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  SizedBox(height: 40,),
                                  SizedBox(width: 20,),
                                  Text('คณะ',style: textHeading,),
                                  SizedBox(width: 45,),
                                  Text(Faculty, style: textnormal,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      //--------------------------------คณะ--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                          SizedBox(height: 10,width: 95,),
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      //--------------------------------วันเกิด--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  SizedBox(height: 40,),
                                  SizedBox(width: 20,),
                                  Text('วันเกิด',style: textHeading,),
                                  SizedBox(width: 26,),
                                  Text(Birthday, style: textnormal,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      //--------------------------------วันเกิด--------------------------------
                      //--------------------------------เส้นแบ่ง--------------------------------
                      Row(
                        children: [
                          SizedBox(height: 10,width: 95,),
                          Expanded(child: SizedBox(height: 0.5,width: 0.5,child: Container(color: Color(0xff9BA3EB),),)),
                        ],
                      ),
                      //--------------------------------เส้นแบ่ง--------------------------------
                      SizedBox(height: 320,width: 1,),

                      //--------------------------------ออกจากระบบ--------------------------------
                      SizedBox(
                        child:Row(
                          children: <Widget>[

                            //Image.asset('assets/person.png', height: 40, width: 40),
                            Expanded(child: ElevatedButton(
                              child: const ButtonOperation(BTname: 'แก้ไขข้อมูลส่วนตัว'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => const EditProfile()),
                                );
                              },
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



