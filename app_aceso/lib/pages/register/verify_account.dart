import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/register/privacy_agreement.dart';
import 'package:app_aceso/pages/widget/widget_Textfromfield.dart';
import 'package:app_aceso/pages/widget/widget_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class VerifyAccount extends StatelessWidget {
  VerifyAccount({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              top: 50,
              left: 20,
            ),
            child: IconButton(
              icon: Iback,
              color: APrimaryColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(
                  top: 10, left: defaultPadding, right: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'กรอกรหัสยืนยัน',
                    style: textHeading,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'เราได้ส่งรหัส 6 หลัก ไปยังอีเมล : 63015xxx(ตัวแปร)',
                    style: textnormalLight,
                  ),
                  SizedBox(height: 25.0),
                  Form(
                    key: _formKey,
                    child: const TFFpassword(),
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Text(
                        'ยังไม่ได้รับรหัสยืนยัน? ',
                        style: textsmallLight,
                      ),
                      Text(
                        ' ส่งรหัสใหม่',
                        style: TextStyle(
                            fontFamily: 'Prompt',
                            fontSize: 14,
                            color: Color(0xffF5B277)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(defaultPadding),
            child: ElevatedButton(
              child: ButtonOperation(BTname: 'ยืนยัน'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Agreement()),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
