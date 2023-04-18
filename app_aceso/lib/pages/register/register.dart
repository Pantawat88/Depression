import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/register/verify_account.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widget/widget_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  const SizedBox(height: 15),
                  const Text(
                    'ลงทะเบียน',
                    style: textHeading,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'กรอกอีเมลของสถาบัน kmitl เท่านั้น เพื่อใช้สำหรับลงทะเบียน',
                    style: textnormalLight,
                  ),
                  const SizedBox(height: 25),
                  Form(
                    key: _formKey,
                    child: TextFormField(
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
                              borderSide:
                                  const BorderSide(color: APrimaryColor),
                              borderRadius: BorderRadius.circular(12.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: APrimaryLightColor, width: 2),
                              borderRadius: BorderRadius.circular(12.0)),
                          errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(12.0)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(12.0)),
                          labelText: 'อีเมล',
                          labelStyle: textformfield,
                          contentPadding: const EdgeInsets.only(
                              top: 12.0, bottom: 12.0, left: 12.0)),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: const ButtonOperation(
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
          ],
        ),
      ),
    );
  }
}
