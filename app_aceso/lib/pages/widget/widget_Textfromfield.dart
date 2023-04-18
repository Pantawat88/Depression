import 'package:flutter/material.dart';

import '../../constants.dart';

import 'package:app_aceso/pages/profile/edit_password.dart';

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
              borderSide: const BorderSide(color: APrimaryColor),
              borderRadius: BorderRadius.circular(12.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: APrimaryLightColor, width: 2),
              borderRadius: BorderRadius.circular(12.0)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          labelText: 'อีเมล',
          labelStyle: textformfield,
          contentPadding:
              const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
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
              borderSide: const BorderSide(color: APrimaryColor),
              borderRadius: BorderRadius.circular(12.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: APrimaryLightColor, width: 2),
              borderRadius: BorderRadius.circular(12.0)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          labelText: "รหัสผ่าน",
          labelStyle: textformfield,
          contentPadding:
              const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
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
              borderSide: const BorderSide(color: APrimaryColor),
              borderRadius: BorderRadius.circular(12.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: APrimaryLightColor, width: 2),
              borderRadius: BorderRadius.circular(12.0)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(12.0)),
          labelText: "รหัสผ่าน",
          labelStyle: textformfield,
          contentPadding:
              const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
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
          border: const OutlineInputBorder(
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
          contentPadding:
              const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}

class TFFinformation extends StatelessWidget {
  final String labeltext;
  const TFFinformation({Key? key, required this.labeltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (text) {
        if (text == null || text.isEmpty) {
          return 'กรุณากรอก';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textKey,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
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
        contentPadding:
            const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0),
      ),
    );
  }
}

///------------------------------------------------ส่วนหน้าเปลี่ยนรหัสผ่าน------------------------------------------------
///
///
///
///

///------------------------------------------------ส่วนเปลี่ยนรหัสผ่านปัจจุบัน------------------------------------------------
final TextEditingController CurrentPasswordController = TextEditingController();

class TFFCurrentPassword extends StatelessWidget {
  final String labeltext;
  const TFFCurrentPassword({Key? key, required this.labeltext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        validateAllFields();
        if (value == null || value.isEmpty) {
          return 'กรุณากรอกรหัสผ่านก่อน';
        }
        if (value.length < 6 || value.length > 18) {
          return 'รหัสผ่านต้องมีความยาวระหว่าง 6-18 ตัว';
        }
        return null;
      },
      controller: CurrentPasswordController, //เก็บค่ารหัสผ่านปัจจุบันตอนกรอก
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textnormalbold,
      obscureText: true,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
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
          contentPadding:
              const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}

///------------------------------------------------ส่วนเปลี่ยนรหัสผ่านปัจจุบัน------------------------------------------------

///------------------------------------------------ส่วนเปลี่ยนรหัสผ่านใหม่------------------------------------------------

final TextEditingController NewPasswordController = TextEditingController();

class TFFNewPassword extends StatelessWidget {
  final String labeltext;
  const TFFNewPassword({Key? key, required this.labeltext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        validateAllFields();

        if (value == null || value.isEmpty) {
          return 'กรุณากรอกรหัสผ่านก่อน';
        }
        if (value.length < 6 || value.length > 18) {
          return 'รหัสผ่านต้องมีความยาวระหว่าง 6-18 ตัว';
        }
        return null;
      },
      controller: NewPasswordController, //เก็บค่ารหัสผ่านใหม่ตอนกรอก
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textnormalbold,
      obscureText: true,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
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
          contentPadding:
              const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}

///------------------------------------------------ส่วนเปลี่ยนรหัสผ่านใหม่------------------------------------------------

///------------------------------------------------ส่วนเปลี่ยนรหัสผ่านใหม่อีกครั้ง------------------------------------------------
final TextEditingController RepeatNewPasswordController =
    TextEditingController();

class TFFRepeatNewPassword extends StatelessWidget {
  final String labeltext;
  const TFFRepeatNewPassword({Key? key, required this.labeltext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        validateAllFields();

        if (value == null || value.isEmpty) {
          return 'กรุณากรอกรหัสผ่านก่อน';
        }
        if (value.length < 6 || value.length > 18) {
          return 'รหัสผ่านต้องมีความยาวระหว่าง 6-18 ตัว';
        }
        return null;
      },
      controller:
          RepeatNewPasswordController, //เก็บค่ารหัสผ่านใหม่อีกครั้งตอนกรอก
      textInputAction: TextInputAction.next,
      cursorColor: APrimaryColor,
      style: textnormalbold,
      obscureText: true,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
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
          contentPadding:
              const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 12.0)),
    );
  }
}

///------------------------------------------------ส่วนเปลี่ยนรหัสผ่านใหม่อีกครั้ง------------------------------------------------
bool allFieldsAreValid = false;

void validateAllFields() {
  // validate each form field and set allFieldsAreValid accordingly
  bool isCurrentPasswordValid = CurrentPasswordController.text.isNotEmpty;
  bool isNewPasswordValid = NewPasswordController.text.isNotEmpty;
  bool isRepeatNewPasswordValid = RepeatNewPasswordController.text.isNotEmpty;
  // add more validation checks for other fields if needed

  allFieldsAreValid =
      isCurrentPasswordValid && isNewPasswordValid && isRepeatNewPasswordValid;
}

///
///
///
///
///------------------------------------------------ส่วนหน้าเปลี่ยนรหัสผ่าน------------------------------------------------
