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
      style: tKey,
      decoration: InputDecoration(
          hintText: 'อีเมล',
          hintStyle: tTextformfield,
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
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: tKey,
      obscureText: true,
      decoration: InputDecoration(
          hintText: "รหัสผ่าน",
          hintStyle: tTextformfield,

          contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}
