import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/register/privacy_agreement.dart';
import 'package:app_aceso/pages/widget/widget_button.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class VerifyAccount extends StatefulWidget {
  final String? verificationCode;
  final String? email;

  const VerifyAccount(
      {Key? key, required this.verificationCode, required this.email})
      : super(key: key);

  @override
  State<VerifyAccount> createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
  final _formKey = GlobalKey<FormState>();
  final verificationCodeController = TextEditingController();

  @override
  void dispose() {
    verificationCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
              top: 50,
              left: 20,
            ),
            child: IconButton(
              icon: Iback,
              color: APrimaryColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(
                  top: 10, left: defaultPadding, right: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'กรอกรหัสยืนยัน',
                    style: textHeading,
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'เราได้ส่งรหัส 6 หลัก ไปยังอีเมล : ${widget.email}',
                    style: textnormalLight,
                  ),
                  const SizedBox(height: 25.0),
                  Form(
                    key: _formKey,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'กรุณากรอกรหัสผ่านก่อน';
                        } else if (value != widget.verificationCode) {
                          return 'รหัสยืนยันไม่ถูกต้อง';
                        }
                        //----------------เช็คค่า_Pin----------------
                        print("PinVerify = $verificationCodeController");
                        //----------------เช็คค่า_Pin----------------
                        return null;
                      },
                      controller: verificationCodeController,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      cursorColor: APrimaryColor,
                      style: textKey,
                      obscureText: true,
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
                          labelText: "รหัสผ่าน",
                          labelStyle: textformfield,
                          contentPadding: const EdgeInsets.only(
                              top: 12.0, bottom: 12.0, left: 12.0)),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  Row(
                    children: const [
                      Text(
                        'ยังไม่ได้รับรหัสยืนยัน? ',
                        style: textsmallLight,
                      ),
                      Text(
                        ' ส่งรหัสใหม่',
                        style: TextStyle(
                            fontFamily: 'Prompt',
                            fontSize: 14,
                            color: Color(0xffF5B277)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.all(defaultPadding),
            child: ElevatedButton(
              child: const ButtonOperation(BTname: 'ยืนยัน'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Agreement()),
                  );
                  // สามารถเปลี่ยนได้ตามการนำไปใช้งานจริง
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
