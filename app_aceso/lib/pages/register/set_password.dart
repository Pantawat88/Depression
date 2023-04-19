import 'package:app_aceso/background.dart';
import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/register/create_avatar.dart';
import 'package:app_aceso/pages/register/register.dart';
import 'package:flutter/material.dart';

import '../widget/widget_Textfromfield.dart';
import '../widget/widget_button.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

final TextEditingController passwordRepeatRegisterController =
    TextEditingController(); //ตัวแปรรหัสผ่านรอบสอง หน้า SetPassword

class _SetPasswordState extends State<SetPassword> {
  final _formKey = GlobalKey<FormState>();

  bool _isNotValidate = false;

  // void registerUser() async{
  //   if(emailRegisterController.text.isNotEmpty && passwordRegisterController.text.isNotEmpty){
  //     //ถ้าข้อมูลมีให้ทำ

  //   }else{
  //     //ถ้าไม่มีข้อมูล
  //     setState(() {
  //       _isNotValidate = true;
  //     });

  //   }
  // }

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
                  children: [
                    TFFsetpassword(labeltext: 'รหัสผ่าน'),
                    SizedBox(height: 15),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'กรุณากรอกรหัสผ่านก่อน';
                        }
                        if (value.length < 6 || value.length > 18) {
                          return 'รหัสผ่านต้องมีความยาวระหว่าง 6-18 ตัว';
                        }
                        return null;
                      },
                      controller: passwordRepeatRegisterController,
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
                          labelText: "รหัสผ่านซ้ำอีกครั้ง",
                          labelStyle: textformfield,
                          contentPadding: const EdgeInsets.only(
                              top: 12.0, bottom: 12.0, left: 12.0)),
                    ),
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
                //registerUser();

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
