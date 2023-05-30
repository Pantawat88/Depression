import 'package:app_aceso/pages/feature.dart';
import 'package:app_aceso/pages/feature/forms/initial_form.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AssessmentForm extends StatefulWidget {
  const AssessmentForm({Key? key}) : super(key: key);

  @override
  State<AssessmentForm> createState() => _AssessmentFormState();
}

class _AssessmentFormState extends State<AssessmentForm> {
  int _selectedIndex = 0;
  int currentnum = 0;

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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FeaturePage()),
                      );
                    },
                  ),
                  const Expanded(
                    child: Text(
                      'แบบประเมิน PHQ 9',
                      style: textHeading,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
//////////-------------------------------------------------------- TOP หัวข้อ PAGE / ย้อนกลับ

//////////-------------------------------------------------------- ส่วนของปุ่มที่สามารถกดไปทำแบบประเมินได้
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10, left: 30, bottom: 15),
              child: ElevatedButton(
                child: Text(
                  "ทำแบบประเมินเดี๋ยวนี้",
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InitialForm()),
                  );
                },
              ),
            ),
//////////-------------------------------------------------------- ส่วนของปุ่มที่สามารถกดไปทำแบบประเมินได้

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
                                  fontSize: 16.0,
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
                                  fontSize: 16.0,
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
                                  fontSize: 16.0,
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
                    const SizedBox(height: 15),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "ประเมิน $currentnum ครั้ง",
                        style: textnormalLight,
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
