import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:app_aceso/pages/profile/settingpage.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  final String nickname = 'Leng';

  final String fullname = 'พันธวัช ตันอนุกูล';

  final String faculty = 'วิศวกรรมศาสตร์';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //width: 415,
          height: 800,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                //width: 425,
                //height: 525,
                left: 0,
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  color: Color(0xFF646FD4),
                  //color: Color.fromRGBO(100, 111, 212, 1.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(nickname, style: textnormalbigWhite),
                                IconButton(
                                  iconSize: 30,
                                  icon:
                                      Icon(Icons.settings, color: Colors.white),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SettingPage()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0.0),
                                    child: Image(
                                      //image: AssetImage('assets/avatar/png/mato.png'),
                                      image: AssetImage(
                                          'assets/avatar/mato/mato1.gif'),
                                      width: 300,
                                      height: 300,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          fullname,
                                          style: textnormalbigWhite,
                                        ),
                                        Text(
                                          faculty,
                                          style: textnormalsmallWhite,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                //width: 425,
                height: 275,
                left: 0,
                top: 485,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 34),
                        child: Text(
                          'เพื่อนซี้ของคุณ : น้องมาโต้',
                          style: TextStyle(
                            fontFamily: 'Prompt',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFF646FD4),
                            height: 1.5,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          child: Text(
                            'ผู้ที่ชื่นชอบท่องอวกาศเป็นชีวิตจิตใจเขามักมองหาสิ่งใหม่ ๆ ในอวกาศอยู่เสมอ',
                            style: textnormal,
                          )),

                      ///////////////////////////////////ส่วนสีขาว
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Center(
                          child: Column(children: [
                            ElevatedButton(
                              onPressed: () {
                                /////////////ป๊อบอัพ
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        width: 265.0,
                                        height: 273.0,
                                        //padding: EdgeInsets.all(30.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 16.0),
                                                    child: IconButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      icon: Icon(
                                                        Icons.close,
                                                        color:
                                                            Color(0xff646FD4),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 15.0,
                                                  horizontal: 30.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'ฉันชอบประโยคนึงมากเลย ที่ว่า “ไม่ใช่ดวงดาวที่จะกุมโชคชะตาของเรา แต่อยู่ในตัวเราเอง”',
                                                    style: textnormal,
                                                  ),
                                                  SizedBox(height: 10.0),
                                                  Center(
                                                    child: Text(
                                                      '-ลิซ่า มันช์เชฟ',
                                                      style: textnormal,
                                                    ),
                                                  ),
                                                  SizedBox(height: 20.0),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );

                                //////ป๊อบอัพ
                              },
                              child: SizedBox(
                                width: 330,
                                height: 40,
                                child: Center(
                                  child: Text(
                                    'สุ่มอ่านบันทึกของ น้องซาโต้',
                                    style: textButton,
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ) ///////////////////////////////////ส่วนสีขาว
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
