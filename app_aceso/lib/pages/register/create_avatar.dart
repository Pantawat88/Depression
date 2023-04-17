import 'package:app_aceso/constants.dart';
import 'package:flutter/material.dart';

import '../widget/widget_button.dart';
import 'success_register.dart';

class CreateAvatar extends StatefulWidget {
  const CreateAvatar({Key? key}) : super(key: key);
  @override
  State<CreateAvatar> createState() => _CreateAvatarState();
}

String backgroundImg = ''; //ไว้กำหนดพื้นหลังในหน้า home

String selectedName = "มาโต้";
String selectedStory =
    "ผู้ที่ชื่นชอบท่องอวกาศเป็นชีวิตจิตใจ\nเขามักมองหาสิ่งใหม่ ๆ ในอวกาศอยู่เสมอ";
Color backgroundColor = const Color(0xff222222);

class _CreateAvatarState extends State<CreateAvatar> {

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
                      Navigator.pop(context);
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'สร้าง เพื่อนซี้',
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
                              setState(() {
                                selectedName = "มาโต้";
                                selectedStory =
                                    "ผู้ที่ชื่นชอบท่องอวกาศเป็นชีวิตจิตใจ\nเขามักมองหาสิ่งใหม่ ๆ ในอวกาศอยู่เสมอ";
                                backgroundColor = const Color(0xff222222);
                                backgroundImg = 'bg_moto1';

                              });
                            },
                            child: Image.asset('assets/avatar/png/mato.png'),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "เนเน่";
                                selectedStory =
                                    "ผีตัวน้อยที่มักจะทักทายกับคนที่\nเข้ามาใกล้อยู่เสมอ";
                                backgroundColor = const Color(0xffCFB2F3);
                                backgroundImg = 'bg_nene1';
                              });
                            },
                            child: Image.asset('assets/avatar/png/nene.png'),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "หูหนู";
                                selectedStory =
                                    "เห็ดตัวน้อยที่ชอบเที่ยวเล่นตามประสาเด็กน้อย\nชอบค้นหาสิ่งใหม่ ๆ ทำเสมอ อารมณ์ดี";
                                backgroundColor = const Color(0xffFFBCBC);
                                backgroundImg = 'bg_huhnu2';
                              });
                            },
                            child: Image.asset('assets/avatar/png/huhnu.png'),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "เนโกะ";
                                selectedStory =
                                    "แมวอ้วนที่ชอบออกกำลังกาย\nแต่ชอบกินเยอะอยู่ดี";
                                backgroundColor = const Color(0xffF4DF8E);
                                backgroundImg = 'bg_neko1';

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
                              setState(() {
                                selectedName = "ราเม็ง";
                                selectedStory =
                                    "มังกรทารกที่พร้อมจะมอบความสดใส\nให้คุณเหมือนทารกแรกแย้ม";
                                backgroundColor = const Color(0xffCDF0EA);
                                backgroundImg = 'bg_ramen1';
                              });
                            },
                            child: Image.asset('assets/avatar/png/ramen.png'),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "โชน";
                                selectedStory =
                                    "ใช้ชีวิตสโลว์ไลฟ์ในโลกมนุษย์ชอบทำงาน\nชอบเต้น มีเหตุผล อบอุ่นใจดี";
                                backgroundColor = const Color(0xffABC2E8);
                                backgroundImg = 'bg_chon1';
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
                child: const ButtonOperation(BTname: 'ถัดไป'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            SuccessRegister(selectedName: selectedName)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
