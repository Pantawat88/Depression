import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/register/privacy_agreement.dart';
import 'package:app_aceso/pages/widget/widget_Textfromfield.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class VerifyAccount extends StatelessWidget {
  VerifyAccount({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 45.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Iback,
                color: APrimaryColor,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'กรอกรหัสยืนยัน',
            ),
            Text('เราได้ส่งรหัส 6 หลัก ไปยังอีเมล : 63015xxx(ตัวแปร)'),
            SizedBox(height: 40),
            Form(
              key: _formKey,
              child: const TFFpassword(),
            ),
            SizedBox(height: 20),
            Text('ยังไม่ได้รับรหัสยืนยัน? ส่งรหัสใหม่'),
            SizedBox(height: 50),
            ElevatedButton(
              child: Text('ยืนยัน'),
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
          ],
        ),
      ),
    );
  }
}
