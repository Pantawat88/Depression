import 'package:flutter/material.dart';

import '../../constants.dart';

class TFFemail extends StatelessWidget {
  const TFFemail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'กรุณากรอกอีเมลก่อน';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textKey,
      decoration: InputDecoration(
          labelText: 'อีเมล',
          labelStyle: textformfield,
          contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}

class TFFpassword extends StatelessWidget {
  const TFFpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'กรุณากรอกรหัสผ่านก่อน';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textKey,
      obscureText: true,
      decoration: InputDecoration(
          labelText: "รหัสผ่าน",
          labelStyle: textformfield,
          contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}

class TFFinformation extends StatelessWidget {
  final String labeltext;
  const TFFinformation({Key? key, required this.labeltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'กรุณากรอก';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textKey,
      obscureText: true,
      decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: textformfield,
          fillColor: APrimaryColor,
          contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}
