import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/register/verify_account.dart';
import 'package:app_aceso/pages/widget/widget_Textfromfield.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();

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
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 15),
            Text(
              'ลงทะเบียน',
              style: tHeading,
            ),
            SizedBox(height: 10),
            Text(
              'กรอกอีเมลของสถาบัน kmitl เท่านั้น  เพื่อใช้ลงทะเบียน',
              style: textLight,
            ),
            SizedBox(height: 30),
            Form(
              key: _formKey,
              child: const TFFemail(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text(
                'ยืนยัน',
                style: tButton,
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => VerifyAccount()),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
