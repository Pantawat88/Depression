import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/profile/settingpage.dart';
import 'package:flutter/material.dart';
import '../widget/widget_button.dart';

import 'package:app_aceso/pages/register/create_avatar.dart'; // เรียกใช้ตัวแปร String backgroundImg = ''; //ไว้กำหนดพื้นหลังในหน้า home

class EditAvatar extends StatefulWidget {
  const EditAvatar({Key? key}) : super(key: key);

  @override
  State<EditAvatar> createState() => _EditAvatar();
}
//----------------------------------------------------------------------ไม่ใช้เพราะมันจะไม่ดึงค่ามาจากหน้าเลือก Avatar----------------------------------------------------------------------
//String selectedName = "มาโต้"; //ค่อยใช้คอมเม้นหลังดึงตัวแปรมาจาก create avatarpage
//String selectedStory =
//    "ผู้ที่ชื่นชอบท่องอวกาศเป็นชีวิตจิตใจ\nเขามักมองหาสิ่งใหม่ ๆ ในอวกาศอยู่เสมอ";
//Color backgroundColor = const Color(0xff222222);
// //String backgroundImg = backgroundImg.isEmpty ? 'bg_moto1' : backgroundImg; ///
//String backgroundImg = 'bg_moto1';
//----------------------------------------------------------------------ไม่ใช้เพราะมันจะไม่ดึงค่ามาจากหน้าเลือก Avatar----------------------------------------------------------------------

///
class _EditAvatar extends State<EditAvatar> {
  String selectedName_demo = selectedName;
  String selectedStory_demo = selectedStory;
  Color backgroundColor_demo = backgroundColor;
  String backgroundImg_demo = backgroundImg;

  //String selectedName = "";
  //String selectedStory =
  //    "ผู้ที่ชื่นชอบท่องอวกาศเป็นชีวิตจิตใจ\nเขามักมองหาสิ่งใหม่ ๆ ในอวกาศอยู่เสมอ";
  //Color backgroundColor = const Color(0xff222222);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Iback,
                    color: APrimaryColor,
                    onPressed: () {
                      selectedName = selectedName_demo;
                      selectedStory = selectedStory_demo;
                      backgroundColor = backgroundColor_demo;
                      backgroundImg = backgroundImg_demo;

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SettingPage()),
                      );
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'เพื่อนซี้',
                      style: textHeading,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 260,
                    height: 270,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor,
                    ),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: selectedName == "มาโต้"
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
                  Column(
                    children: [
                      Text(
                        selectedName,
                        style: textnormalbold,
                      ),
                      Text(
                        selectedStory,
                        style: textnormal,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 80,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 35),
                          GestureDetector(
                            onTap: () {
                              //selectedName_demo = selectedName;
                              //selectedStory_demo = selectedStory;
                              //backgroundColor_demo = backgroundColor;
                              //backgroundImg_demo = backgroundImg;

                              setState(() {
                                selectedName_demo = selectedName;
                                selectedStory_demo = selectedStory;
                                backgroundColor_demo = backgroundColor;
                                backgroundImg_demo = backgroundImg;

                                selectedName = "มาโต้";
                                selectedStory =
                                    "ผู้ที่ชื่นชอบท่องอวกาศเป็นชีวิตจิตใจ\nเขามักมองหาสิ่งใหม่ ๆ ในอวกาศอยู่เสมอ";
                                backgroundColor = const Color(0xff222222);
                                backgroundImg =
                                    'bg_moto1'; //ตั้งค่าพื้นหลังในหน้าเปลี่ยนเพื่อนซี้ เอาไปเป็น path ในการแสดง Img ในหน้า home.dart
                              });
                            },
                            child: Image.asset('assets/avatar/png/mato.png'),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              //selectedName_demo = selectedName;
                              //selectedStory_demo = selectedStory;
                              //backgroundColor_demo = backgroundColor;
                              //backgroundImg_demo = backgroundImg;

                              setState(() {
                                selectedName_demo = selectedName;
                                selectedStory_demo = selectedStory;
                                backgroundColor_demo = backgroundColor;
                                backgroundImg_demo = backgroundImg;

                                selectedName = "เนเน่";
                                selectedStory =
                                    "ผีตัวน้อยที่มักจะทักทายกับคนที่\nเข้ามาใกล้อยู่เสมอ";
                                backgroundColor = const Color(0xffCFB2F3);
                                backgroundImg =
                                    'bg_nene1'; //ตั้งค่าพื้นหลังในหน้าเปลี่ยนเพื่อนซี้ เอาไปเป็น path ในการแสดง Img ในหน้า home.dart
                              });
                            },
                            child: Image.asset('assets/avatar/png/nene.png'),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              //selectedName_demo = selectedName;
                              //selectedStory_demo = selectedStory;
                              //backgroundColor_demo = backgroundColor;
                              //backgroundImg_demo = backgroundImg;

                              setState(() {
                                selectedName_demo = selectedName;
                                selectedStory_demo = selectedStory;
                                backgroundColor_demo = backgroundColor;
                                backgroundImg_demo = backgroundImg;

                                selectedName = "หูหนู";
                                selectedStory =
                                    "เห็ดตัวน้อยที่ชอบเที่ยวเล่นตามประสาเด็กน้อย\nชอบค้นหาสิ่งใหม่ ๆ ทำเสมอ อารมณ์ดี";
                                backgroundColor = const Color(0xffFFBCBC);
                                backgroundImg =
                                    'bg_huhnu2'; //ตั้งค่าพื้นหลังในหน้าเปลี่ยนเพื่อนซี้ เอาไปเป็น path ในการแสดง Img ในหน้า home.dart
                              });
                            },
                            child: Image.asset('assets/avatar/png/huhnu.png'),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              //selectedName_demo = selectedName;
                              //selectedStory_demo = selectedStory;
                              //backgroundColor_demo = backgroundColor;
                              //backgroundImg_demo = backgroundImg;

                              setState(() {
                                selectedName_demo = selectedName;
                                selectedStory_demo = selectedStory;
                                backgroundColor_demo = backgroundColor;
                                backgroundImg_demo = backgroundImg;

                                selectedName = "เนโกะ";
                                selectedStory =
                                    "แมวอ้วนที่ชอบออกกำลังกาย\nแต่ชอบกินเยอะอยู่ดี";
                                backgroundColor = const Color(0xffF4DF8E);
                                backgroundImg =
                                    'bg_neko1'; //ตั้งค่าพื้นหลังในหน้าเปลี่ยนเพื่อนซี้ เอาไปเป็น path ในการแสดง Img ในหน้า home.dart
                              });
                            },
                            child: Image.asset(
                              'assets/avatar/png/neko.png',
                              width: 120,
                            ),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              //selectedName_demo = selectedName;
                              //selectedStory_demo = selectedStory;
                              //backgroundColor_demo = backgroundColor;
                              //backgroundImg_demo = backgroundImg;

                              setState(() {
                                selectedName_demo = selectedName;
                                selectedStory_demo = selectedStory;
                                backgroundColor_demo = backgroundColor;
                                backgroundImg_demo = backgroundImg;

                                selectedName = "ราเม็ง";
                                selectedStory =
                                    "มังกรทารกที่พร้อมจะมอบความสดใส\nให้คุณเหมือนทารกแรกแย้ม";
                                backgroundColor = const Color(0xffCDF0EA);
                                backgroundImg =
                                    'bg_ramen1'; //ตั้งค่าพื้นหลังในหน้าเปลี่ยนเพื่อนซี้ เอาไปเป็น path ในการแสดง Img ในหน้า home.dart
                              });
                            },
                            child: Image.asset('assets/avatar/png/ramen.png'),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              //selectedName_demo = selectedName;
                              //selectedStory_demo = selectedStory;
                              //backgroundColor_demo = backgroundColor;
                              //backgroundImg_demo = backgroundImg;

                              setState(() {
                                selectedName_demo = selectedName;
                                selectedStory_demo = selectedStory;
                                backgroundColor_demo = backgroundColor;
                                backgroundImg_demo = backgroundImg;

                                selectedName = "โชน";
                                selectedStory =
                                    "ใช้ชีวิตสโลว์ไลฟ์ในโลกมนุษย์ชอบทำงาน\nชอบเต้น มีเหตุผล อบอุ่นใจดี";
                                backgroundColor = const Color(0xffABC2E8);
                                backgroundImg =
                                    'bg_chon1'; //ตั้งค่าพื้นหลังในหน้าเปลี่ยนเพื่อนซี้ เอาไปเป็น path ในการแสดง Img ในหน้า home.dart
                              });
                            },
                            child: Image.asset('assets/avatar/png/chon.png'),
                          ),
                          const SizedBox(width: 25),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(defaultPadding),
              child: ElevatedButton(
                child: const ButtonOperation(BTname: 'เปลี่ยนเพื่อนซี้'),
                onPressed: () {
                  /////////////ป๊อบอัพ
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          width: 265.0,
                          height: 273.0,
                          //padding: EdgeInsets.all(30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 16.0),
                                      child: TextButton(
                                          onPressed: () {
                                            selectedName = selectedName_demo;
                                            selectedStory = selectedStory_demo;
                                            backgroundColor =
                                                backgroundColor_demo;
                                            backgroundImg = backgroundImg_demo;

                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            'ยกเลิก',
                                            style: TextStyle(
                                              fontSize: 15,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor: APrimaryColor,
                                              color: APrimaryColor,
                                            ),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Center(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15.0, horizontal: 30.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'คุณยืนยัน',
                                        style: textnormal,
                                      ),
                                      Text(
                                        'ที่จะเปลี่ยนเพื่อนซี้',
                                        style: textnormal,
                                      ),
                                      Text(
                                        'หรือไม่ ?',
                                        style: textnormal,
                                      ),
                                      SizedBox(height: 10.0),
                                      //SizedBox(height: 20.0),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15.0, horizontal: 30.0),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: SizedBox(
                                        height: 37,
                                        width: 120,
                                        child: ElevatedButton(
                                          child: const ButtonOperation(
                                              BTname: 'ยืนยัน'),
                                          onPressed: () {
                                            //ออกแล้วไปหน้า EditAvatar
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EditAvatar()),
                                            );
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );

                  //////ป๊อบอัพ
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
