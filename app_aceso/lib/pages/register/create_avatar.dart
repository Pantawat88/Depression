import 'package:app_aceso/constants.dart';
import 'package:flutter/material.dart';

import '../widget/widget_button.dart';
import 'success_register.dart';

class CreateAvatar extends StatefulWidget {
  const CreateAvatar({Key? key}) : super(key: key);

  @override
  State<CreateAvatar> createState() => _CreateAvatarState();
}

class _CreateAvatarState extends State<CreateAvatar> {
  String selectedName = "น้องมาโต้";
  String selectedStory =
      "ผู้ที่ชื่นชอบท่องอวกาศเป็นชีวิตจิตใจ\nเขามักมองหาสิ่งใหม่ ๆ ในอวกาศอยู่เสมอ";
  Color backgroundColor = Color(0xff222222);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: APrimaryColor,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Text(
                      'สร้าง เพื่อนซี้',
                      style: textHeading,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
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
                      child: selectedName == "น้องมาโต้"
                          ? Image.asset('assets/avatar/mato/mato1.gif')
                          : selectedName == "น้องเนเน่"
                              ? Image.asset('assets/avatar/nene/nene3.gif')
                              : selectedName == "น้องหูหนู"
                                  ? Image.asset(
                                      'assets/avatar/huhnu/huhnu1.gif')
                                  : selectedName == "น้องเนโกะ"
                                      ? Image.asset(
                                          'assets/avatar/neko/neko1.gif')
                                      : selectedName == "น้องราเม็ง"
                                          ? Image.asset(
                                              'assets/avatar/ramen/ramen1.gif')
                                          : selectedName == "น้องโชน"
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
                  SizedBox(height: 10),
                  Container(
                    height: 80,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(width: 35),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "น้องมาโต้";
                                selectedStory =
                                    "ผู้ที่ชื่นชอบท่องอวกาศเป็นชีวิตจิตใจ\nเขามักมองหาสิ่งใหม่ ๆ ในอวกาศอยู่เสมอ";
                                backgroundColor = Color(0xff222222);
                              });
                            },
                            child: Image.asset('assets/avatar/png/mato.png'),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "น้องเนเน่";
                                selectedStory =
                                    "ผีตัวน้อยที่มักจะทักทายกับคนที่\nเข้ามาใกล้อยู่เสมอ";
                                backgroundColor = Color(0xffCFB2F3);
                              });
                            },
                            child: Image.asset('assets/avatar/png/nene.png'),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "น้องหูหนู";
                                selectedStory =
                                    "เห็ดตัวน้อยที่ชอบเที่ยวเล่นตามประสาเด็กน้อย\nชอบค้นหาสิ่งใหม่ ๆ ทำเสมอ อารมณ์ดี";
                                backgroundColor = Color(0xffFFBCBC);
                              });
                            },
                            child: Image.asset('assets/avatar/png/huhnu.png'),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "น้องเนโกะ";
                                selectedStory =
                                    "แมวอ้วนที่ชอบออกกำลังกาย\nแต่ชอบกินเยอะอยู่ดี";
                                backgroundColor = Color(0xffF4DF8E);
                              });
                            },
                            child: Image.asset(
                              'assets/avatar/png/neko.png',
                              width: 120,
                            ),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "น้องราเม็ง";
                                selectedStory =
                                    "มังกรทารกที่พร้อมจะมอบความสดใส\nให้คุณเหมือนทารกแรกแย้ม";
                                backgroundColor = Color(0xffCDF0EA);
                              });
                            },
                            child: Image.asset('assets/avatar/png/ramen.png'),
                          ),
                          SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedName = "น้องโชน";
                                selectedStory =
                                    "ใช้ชีวิตสโลว์ไลฟ์ในโลกมนุษย์ชอบทำงาน\nชอบเต้น มีเหตุผล อบอุ่นใจดี";
                                backgroundColor = Color(0xffABC2E8);
                              });
                            },
                            child: Image.asset('assets/avatar/png/chon.png'),
                          ),
                          SizedBox(width: 25),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(defaultPadding),
              child: ElevatedButton(
                child: ButtonOperation(BTname: 'ถัดไป'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SuccessRegister()),
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
