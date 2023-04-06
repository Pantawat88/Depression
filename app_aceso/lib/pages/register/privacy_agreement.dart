import 'package:app_aceso/pages/login.dart';
import 'package:app_aceso/pages/register/personal_information.dart';
import 'package:app_aceso/pages/widget/widget_button.dart';
import 'package:flutter/material.dart';

import '../../background.dart';
import '../../constants.dart';

class Agreement extends StatefulWidget {
  const Agreement({super.key});

  @override
  State<Agreement> createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
  bool _isChecked = false; //เก็บค่า Checkbox ไว้เช็คตอนกดไม่กด

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Iclear,
                color: APrimaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => WelcomeLogin()),
                  );
                },
              ),
            ),
            Text(
              'นโยบายความเป็นส่วนตัว',
              style: textHeading,
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                color: Color(0xffF8F8FE).withOpacity(0.8),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "นโยบายความเป็นส่วนตัวสำหรับลูกค้า\nบริษัท อเซโซ จำกัด ให้ความสำคัญกับการคุ้มครองข้อมูลส่วนบุคคลของคุณ โดยนโยบายความเป็นส่วนตัวฉบับนี้ได้อธิบายแนวปฏิบัติเกี่ยวกับการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคล รวมถึงสิทธิต่าง ๆ ของเจ้าของข้อมูลส่วนบุคคล ตามกฎหมายคุ้มครองข้อมูลส่วนบุคคล",
                        style: TextStyle(
                          fontFamily: 'Prompt',
                          fontSize: 12.0,
                          color: Color(0xff464646),
                        ),
                      ),
                      Text(
                        '1 ) การเก็บรวบรวมข้อมูลส่วนบุคคล\n'
                        'เราจะเก็บรวบรวมข้อมูลส่วนบุคคลที่ได้รับโดยตรงจากคุณผ่านช่องทาง ดังต่อไปนี้\n\n'
                        '- การสมัครสมาชิก\n'
                        '- อีเมล\n'
                        '- Google Login\n\n'
                        'ประเภทข้อมูลส่วนบุคคลที่เก็บรวบรวม\n'
                        'ข้อมูลส่วนบุคคล เช่น ชื่อ นามสกุล อายุ วันเดือนปีเกิด สัญชาติ เลขประจำตัวประชาชน หนังสือเดินทาง เป็นต้น\n\n'
                        'ข้อมูลการติดต่อ เช่น ที่อยู่ หมายเลขโทรศัพท์ อีเมล เป็นต้น\n\n'
                        'ข้อมูลบัญชี เช่น บัญชีผู้ใช้งาน ประวัติการใช้งาน เป็นต้น\n\n'
                        'ข้อมูลทางเทคนิค เช่น IP address, Cookie ID, ประวัติการใช้งานเว็บไซต์ (Activity Log) เป็นต้น\n\n'
                        'ข้อมูลอื่น ๆ เช่น รูปภาพ ภาพเคลื่อนไหว และข้อมูลอื่นใดที่ถือว่าเป็นข้อมูลส่วนบุคคลตามกฎหมายคุ้มครองข้อมูลส่วนบุคคล\n\n'
                        'เราจะเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลอ่อนไหว ดังต่อไปนี้ เมื่อเราได้รับความยินยอมโดยชัดแจ้งจากคุณ เว้นแต่กฎหมายกำหนดให้ทำได้\n\n'
                        '- เชื้อชาติ\n'
                        '- ข้อมูลอื่นใดที่กระทบต่อข้อมูลส่วนบุคคลของคุณตามที่คณะกรรมการคุ้มครองข้อมูลส่วนบุคคลประกาศกำหนด',
                        style: TextStyle(
                          fontFamily: 'Prompt',
                          fontSize: 12.0,
                          color: Color(0xff464646),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                title: const Text(
                  "ฉันยอมรับนโยบายความเป็นส่วนตัวนี้",
                  style: textnormal,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: ButtonOperation(
                  BTname: 'ถัดไป',
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            PersonalInformation()),
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
