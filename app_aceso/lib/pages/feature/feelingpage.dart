import 'package:flutter/material.dart';

import '../../constants.dart';

class FeelingPage extends StatefulWidget {
  const FeelingPage({super.key});

  @override
  State<FeelingPage> createState() => _FeelingPageState();
}

class _FeelingPageState extends State<FeelingPage> {
  int _selectedIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
//////////-------------------------------------------------------- TOP หัวข้อ PAGE / ย้อนกลับ
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
                      'ไดอารี่ความรู้สึก',
                      style: textHeading,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
//////////-------------------------------------------------------- TOP หัวข้อ PAGE / ย้อนกลับ

//////////-------------------------------------------------------- ส่วนของการแสดงการบันทึกอารมณ์ของวันนี้
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10, left: 30, bottom: 15),
              child: Text("รอเพิ่มภายหลัง"),
            ),
//////////-------------------------------------------------------- ส่วนของการแสดงการบันทึกอารมณ์ของวันนี้

//////////-------------------------------------------------------- ส่วนของเมนูสำหรับเลือกดูประวัติการประเมินทั้ง สัปดาห์ เดือน ปี
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: lightestColor,
                child: Column(
                  children: [
                    Container(
                      height: 35,
                      margin: EdgeInsets.only(left: 30, right: 30, top: 15),
                      decoration: BoxDecoration(
                        color: Color(0xffDDE0FF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              child: Text(
                                "สัปดาห์",
                                style: TextStyle(
                                  fontFamily: 'Prompt',
                                  fontSize: 15.0,
                                  color: _selectedIndex == 0
                                      ? APrimaryColor
                                      : APrimaryLightColor,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: _selectedIndex == 0
                                    ? Colors.white
                                    : Color(0xffDDE0FF),
                                elevation: 0,
                              ),
                              onPressed: () => _onButtonPressed(0),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              child: Text(
                                "เดือน",
                                style: TextStyle(
                                  fontFamily: 'Prompt',
                                  fontSize: 15.0,
                                  color: _selectedIndex == 1
                                      ? APrimaryColor
                                      : APrimaryLightColor,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: _selectedIndex == 1
                                    ? Colors.white
                                    : Color(0xffDDE0FF),
                                elevation: 0,
                              ),
                              onPressed: () => _onButtonPressed(1),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              child: Text(
                                "ปี",
                                style: TextStyle(
                                  fontFamily: 'Prompt',
                                  fontSize: 15.0,
                                  color: _selectedIndex == 2
                                      ? APrimaryColor
                                      : APrimaryLightColor,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: _selectedIndex == 2
                                    ? Colors.white
                                    : Color(0xffDDE0FF),
                                elevation: 0,
                              ),
                              onPressed: () => _onButtonPressed(2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
