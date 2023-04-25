import 'package:app_aceso/pages/feature/forms/result_screen.dart';
import 'package:flutter/material.dart';

import '../../../background.dart';
import '../../../constants.dart';
import 'question_screen.dart';

class ConfirmAnswer extends StatefulWidget {
  //final List<String> phqList;
  //final String phq1;
  final List<String> phqList;

  const ConfirmAnswer({Key? key, required this.phqList}) : super(key: key);

  @override
  State<ConfirmAnswer> createState() => _ConfirmAnswerState();
}

class _ConfirmAnswerState extends State<ConfirmAnswer> {
  String Nickname = 'เล้ง';

  List<String> phqList2 = [];

  @override
  void initState() {
    super.initState();
    phqList2 = widget.phqList;
  }

  List<String> question = [
    'เบื่อ ไม่สนใจอยากทำอะไร',
    'ไม่สบายใจ ซึมเศร้า ท้อแท้',
    'หลับยาก หรือ หลับๆตื่นๆ หรือหลับมากไป',
    'เหนื่อยง่าย หรือ ไม่ค่อยมีแรง',
    'เบื่ออาหาร หรือ กินมากเกินไป',
    'รู้สึกไม่ดีกับตัวเองคิดว่าตัวเองล้มเหลว หรือเป็นคนทำให้ตัวเอง หรือครอบครัวผิดหวัง',
    'สมาธิไม่ดีเวลาทำอะไร เช่น ดูโทรทัศน์ ฟังวิทยุ หรือทำงานที่ต้องใช้ความตั้งใจ',
    'พูดช้า ทำอะไรช้าลง จนคนอื่นสังเกตเห็นได้ หรือกระสับกระส่ายไม่สามารถอยู่นิ่งได้เหมือนที่เคยเป็น',
    'คิดทำร้ายตนเอง หรือคิดว่า ถ้าตายๆไปเสียคงจะดี',
  ];

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 250,
              margin: EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/avatar/huhnu/huhnu2.gif"),
                  ),
                  SizedBox(height: 15),
//----------------------------------------------ส่วนของการ showdialog ของการตรวจสอบคำตอบ
                  ElevatedButton(
                    child: Text(
                      "ตรวจสอบคำตอบ",
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffF5B277),
                      elevation: 0,
                      minimumSize: const Size(170, 35),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ตรวจสอบคำตอบ",
                                  style: textHeading,
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    color: Color(0xff646FD4),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            content: Container(
                              width: 265.0,
                              height: 430.0,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: question.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Card(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10),
                                              Text(
                                                question[index],
                                                style: TextStyle(
                                                  fontFamily: 'Prompt',
                                                  fontSize: 15.0,
                                                  //fontWeight: FontWeight.bold,
                                                  color: Color(0xff464646),
                                                ),
                                              ),
                                              Text(
                                                phqList2[index],
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  fontFamily: 'Prompt',
                                                  color: APrimaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),

                  ///-------------------------------------------สิ้นสุด showdialog----------
                  SizedBox(height: 3),
                  Text(
                    "ยืนยันคำตอบของ",
                    style: TextStyle(
                      fontFamily: 'Prompt',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff464646),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: Nickname,
                          style: TextStyle(
                            fontFamily: 'Prompt',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: orangeColor,
                          ),
                        ),
                        TextSpan(
                          text: ' หรือไม่',
                          style: TextStyle(
                            fontFamily: 'Prompt',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff464646),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //---------------------------------ส่วนของปุ่มดำเนินการ ยืนยัน/ยกเลิก----------------
            Container(
              child: Column(
                children: [
                  ElevatedButton(
                      child: Text(
                        "ยืนยัน",
                        style: TextStyle(
                          fontFamily: 'Prompt',
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: APrimaryLightColor,
                        onPrimary: APrimaryColor,
                        elevation: 0,
                        minimumSize: const Size(300, 45),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ResultScreen(phqList2: phqList2)),
                        );
                      }),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    child: Text(
                      "ย้อนกลับ",
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: APrimaryLightColor),
                      primary: Colors.white,
                      onPrimary: APrimaryColor,
                      elevation: 0,
                      minimumSize: const Size(300, 45),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
