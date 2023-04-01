import 'package:aceso_app/background.dart';
import 'package:aceso_app/pages/register/verify_account.dart';
import 'package:aceso_app/pages/widget/widget_Textfromfield.dart';
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
            horizontal: defaultPadding, vertical: 45.0),
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
            SizedBox(height: 20),
            Text(
              'ลงทะเบียน',
            ),
            Text('กรอกอีเมลของสถาบัน kmitl เท่านั้น เพื่อใช้ลงทะเบียน'),
            SizedBox(height: 40),
            Form(
              key: _formKey,
              child: const TFFemail(),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              child: Text('ยืนยัน'),
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
