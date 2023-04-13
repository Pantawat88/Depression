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
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: APrimaryColor),
              borderRadius: BorderRadius.circular(12.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: APrimaryLightColor, width: 2),
              borderRadius: BorderRadius.circular(12.0)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          labelText: 'อีเมล',
          labelStyle: textformfield,
          contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}

class TFFpasswordPin extends StatelessWidget {
  const TFFpasswordPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'กรุณากรอกรหัสผ่านก่อน';
        }
        if (value.length < 6 || value.length > 6) {
          return 'รหัสผ่านต้องมีความยาวระหว่าง 6 ตัว';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textKey,
      obscureText: true,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: APrimaryColor),
              borderRadius: BorderRadius.circular(12.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: APrimaryLightColor, width: 2),
              borderRadius: BorderRadius.circular(12.0)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          labelText: "รหัสผ่าน",
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
        if (value.length < 6 || value.length > 18) {
          return 'รหัสผ่านต้องมีความยาวระหว่าง 6-18 ตัว';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textKey,
      obscureText: true,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: APrimaryColor),
              borderRadius: BorderRadius.circular(12.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: APrimaryLightColor, width: 2),
              borderRadius: BorderRadius.circular(12.0)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          labelText: "รหัสผ่าน",
          labelStyle: textformfield,
          contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}



class TFFsetpassword extends StatelessWidget {
  final String labeltext;
  const TFFsetpassword({Key? key, required this.labeltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'กรุณากรอกรหัสผ่านก่อน';
        }
        if (value.length < 6 || value.length > 18) {
          return 'รหัสผ่านต้องมีความยาวระหว่าง 6-18 ตัว';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textKey,
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12.0)),
          filled: true,
          fillColor: APrimaryveryLight,
          labelText: labeltext,
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
      validator: (Text) {
        if (Text == null || Text.isEmpty) {
          return 'กรุณากรอก';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textKey,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12.0)),
        filled: true,
        fillColor: APrimaryveryLight,
        labelText: labeltext,
        labelStyle: textformfield,
        contentPadding: EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0),
      ),
    );
  }
}
