import 'package:app_aceso/background.dart';
import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/register/create_avatar.dart';
import 'package:flutter/material.dart';

import '../widget/widget_Textfromfield.dart';
import '../widget/widget_button.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Iback,
                  color: APrimaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Expanded(
                  child: Text(
                    'รหัสผ่าน',
                    style: textHeading,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Icon(
            Icons.lock_outline,
            size: 50,
            color: APrimaryColor,
          ),
          const Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Text(
              'กำหนดรหัสผ่านของคุณ ด้วยอักขระ 6-18 ตัว สำหรับการใช้งานบน Aceso',
              style: textnormalLight,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: const [
                    TFFsetpassword(labeltext: 'รหัสผ่าน'),
                    SizedBox(height: 15),
                    TFFsetpassword(labeltext: 'รหัสผ่านซ้ำอีกครั้ง'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.all(defaultPadding),
            child: ElevatedButton(
              child: const ButtonOperation(BTname: 'ถัดไป'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CreateAvatar()),
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
