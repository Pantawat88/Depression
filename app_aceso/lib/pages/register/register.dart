import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/register/verify_account.dart';
import 'package:app_aceso/pages/widget/widget_Textfromfield.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widget/widget_button.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 45.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
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
                    style: textHeading,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'กรอกอีเมลของสถาบัน kmitl เท่านั้น เพื่อใช้สำหรับลงทะเบียน',
                    style: textnormalLight,
                  ),
                  SizedBox(height: 25),
                  Form(
                    key: _formKey,
                    child: const TFFemail(),
                  ),
                ],
              ),
            ),
            Container(
              child: ElevatedButton(
                child: ButtonOperation(
                  BTname: 'ยืนยัน',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
