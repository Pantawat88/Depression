import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:app_aceso/pages/profile/settingpage.dart';
//import 'package:app_aceso/pages/profile/edit_avatar.dart';
import 'package:app_aceso/pages/register/create_avatar.dart';

import 'dart:math';



List<String> diarymato = [ "วันนี้เป็นวันที่สุดท้ายของการทดลองดูดาวอย่างยิ่งใหญ่ของเรา",
"วันนี้เราได้พบกับดาวหนึ่งที่มีสภาพแวดล้อมที่เหมาะสมกับการมีชีวิต เราอยู่บนดาวนั้นเป็นเวลาสามวัน ",
"ออกเดินทางไปหาดาวดวงนั้นกัน ตื่นเต้นไม่ไหวแล้ว"];

List<String> diarynene = [ "น้องเนเน่ทักทายคนในทุก ๆ ครั้งที่คนเดินผ่านมาใกล้", "น้องเนชอบเล่าเรื่องราวของตนเองให้คนอื่นฟัง", "บางทีฉันก็ลืมตัวมาเป็นผีน้อยนะ "];

List<String> diaryhuhnu = [ "วันนี้หูหนูได้ไปเที่ยวที่สวนสนุก ซึ่งเป็นสถานที่ที่เขายังไม่เคยไปมาก่อน", "หูหนูชอบค้นหาสิ่งใหม่ๆและสิ่งนี้ทำให้เขารู้สึกตื่นเต้นและสนุกสนานมากๆ", "แม้ว่าหูหนูจะเป็นเห็ดตัวน้อยแต่เขาก็ชอบเที่ยวเล่นเหมือนเด็กน้อยอื่นๆ"];

List<String> diaryneko = [ "ฉันกำลังนอนอยู่ในโซฟา ฉันดูเหมือนจะไม่สนใจการออกกำลังกาย แต่พอได้ยินเสียงเรียกว่า วอร์มร่างกาย เขาก็กระโดดขึ้นมาและเริ่มทำกิจกรรมกันเลย", "ฉันเริ่มต้นด้วยการเดินบนลู่วิ่ง แต่หลังจากไม่กี่นาที ฉันก็หายใจเหนื่อยหอบแหะๆ ไม่ไหวแล้วว", "หิวชาบูปลาจัง อยากกินอีกจังเลยยย"];

List<String> diaryramen = [ "ฉันอยู่ที่สวนสาธารณะ และฉันกำลังเล่นอยู่ในลานหญ้ากับเด็กหนุ่มหน้าใสอีกคนหนึ่ง เหมือนจะชื่อโชนอะไรสักอย่าง", "ทักษะการบินของฉันน่าทึ่งมากนะจะบอกให้ ไม่อยากโม้เลย", "บินไปเล่นที่ไหนดีนะ ลองบินไปเรื่อยๆแล้วกัน", "มีคนชอบบอกว่าฉันชื่อเหมือนอาหารบางอย่างด้วยละ"];

List<String> diarychon = [ "ฉันเป็นสิ่งมีชีวิตต่างดาวที่ตัดสินใจมาอาศัยอยู่ในโลกมนุษย์ เพื่อตระหนักถึงวิถีชีวิตและวัฒนธรรมของมนุษย์", "ฉันชื่นชอบทำงานและชอบเต้น ฉันมีความรู้สึกอบอุ่นใจต่อผู้อื่น", "หิวจัง กินอะไรดีนะมื้อนี้"];


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
                  //color: Color(0xFF646FD4), // อันนี้ใช้ตอนสร้างเฉยๆ
                  color:  backgroundColor, //ใช้กรณี แอพ เสร็จ มันจะเลือกพื้นหลังตามนั้น (ดึง backgroundColor มาจาก EditAvatar)
                  //color: Color.fromRGBO(100, 111, 212, 1.0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
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
                                  icon: const Icon(Icons.settings,
                                      color: Colors.white),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SettingPage()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            //const SizedBox(height: 10),
                            Column(
                              children: [
                                Container(
                                  width: 300,
                                  height: 350,
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 0.0),
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child:
                                        selectedName == "มาโต้"
                                            ? Image.asset('assets/avatar/mato/mato1.gif')
                                            : selectedName == "เนเน่"
                                            ? Image.asset('assets/avatar/nene/nene3.gif')
                                            : selectedName == "หูหนู"
                                            ? Image.asset(
                                            'assets/avatar/huhnu/huhnu1.gif')
                                            : selectedName == "เนโกะ"
                                            ? Image.asset(
                                            'assets/avatar/neko/neko1.gif')
                                            : selectedName == "ราเม็ง"
                                            ? Image.asset(
                                            'assets/avatar/ramen/ramen1.gif')
                                            : selectedName == "โชน"
                                            ? Image.asset(
                                            'assets/avatar/chon/chon1.gif')
                                            : null,
                                      ),



                                    ),
                                  ),
                                ),
                                //SizedBox(height: 10),
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
                          'เพื่อนซี้ของคุณ : น้อง$selectedName',
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
                            '$selectedStory',
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
                                                  selectedName == "มาโต้"
                                                      ? Text(diarymato[Random().nextInt(diarymato.length)], style: textnormal)
                                                      : selectedName == "เนเน่"
                                                      ? Text(diarynene[Random().nextInt(diarynene.length)], style: textnormal)
                                                      : selectedName == "หูหนู"
                                                      ? Text(diaryhuhnu[Random().nextInt(diaryhuhnu.length)], style: textnormal)
                                                      : selectedName == "เนโกะ"
                                                      ? Text(diaryneko[Random().nextInt(diaryneko.length)], style: textnormal)
                                                      : selectedName == "ราเม็ง"
                                                      ? Text(diaryramen[Random().nextInt(diaryramen.length)], style: textnormal)
                                                      : selectedName == "โชน"
                                                      ? Text(diarychon[Random().nextInt(diarychon.length)], style: textnormal)
                                                      : Container(),

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
                                    'สุ่มอ่านบันทึกของ น้อง$selectedName',
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
