import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/register/verify_account.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widget/widget_button.dart';






import 'package:email_validator/email_validator.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'dart:math';







final emailController = TextEditingController(); //มาประกาศใช้ข้างนอก เพราะมันไปหน้าอื่นได้ง่ายกว่า


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
//final TextEditingController emailRegisterController = TextEditingController();//ตัวแปรอีเมลหน้า ลงทะเบียน

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

//----------------------ส่วนที่จัดการส่งอีเมล-------------------------------
//
//

 // final emailController = TextEditingController();  //ส่วนนี้ปิดไม่ใช้ของฝ้ายเพราะมันดึงตัวแปรไปหน้าอื่นลำบาก ไม่งั้นต้องส่งค่าจากแต่ละหน้าไปอีก
  String? verificationCode;

  void sendEmail(String recipientEmail) async {
    final smtpServer = gmail("acesohelp@gmail.com", "xvpvpilosxjtrrbe");
    final verificationCode = generateRandomCode();
    final message = Message()
      ..from = Address("acesohelp@gmail.com", "admin")
      ..recipients.add(recipientEmail)
      ..subject = "Email verification code"
      ..text = verificationCode; // สร้างรหัสสุ่มในฟังก์ชันนี้

    try {
      final sendReport = await send(message, smtpServer);
      print("Message sent: ${sendReport.toString()}");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VerifyAccount(
            verificationCode: verificationCode,
            email: recipientEmail,
          ),
        ),
      );
    } catch (e) {
      print("Error occurred: $e");
    }
  }

  //----------------------ส่วนแรนดอม_pin_6_digi--------------------

  String generateRandomCode() {
    final random = Random();
    final codeLength = 6;
    final codeUnits = List.generate(
      codeLength,
          (index) {
        final randomNumber = random.nextInt(10);
        return randomNumber.toString();
      },
    );

    final code = codeUnits.join();
    return code;
  }

  //----------------------ส่วนแรนดอม_pin_6_digi--------------------


  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }



  //
  //
  //----------------------ส่วนที่จัดการส่งอีเมล-------------------------------






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
                        }else if (!EmailValidator.validate(value)) {
                          return "Invalid email format";
                        }else if (!value.endsWith('@kmitl.ac.th')) {
                          return "อีเมล์ต้องเป็น @kmitl.ac.th เท่านั้น";
                        }
                        return null;
                      },
                      //controller: emailRegisterController,
                      controller: emailController,
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
                  sendEmail(emailController.text);

                  //----------------ปิดส่วนนี้เมื่อมีการส่งค่าอีเมลเสร็จแล้วค่อยไปหน้าต่อไป-------------
                  //Navigator.push(
                  //  context,
                  //  MaterialPageRoute(
                  //      builder: (BuildContext context) => VerifyAccount()),
                  //);
                  //----------------ปิดส่วนนี้เมื่อมีการส่งค่าอีเมลเสร็จแล้วค่อยไปหน้าต่อไป-------------


                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
