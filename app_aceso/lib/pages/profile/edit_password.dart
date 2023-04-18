import 'package:app_aceso/pages/profile/setting_profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../background.dart';
import '../../constants.dart';
import '../widget/widget_Textfromfield.dart';
import '../widget/widget_button.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({super.key});

  @override
  State<EditPassword> createState() => _EditPassword();
}

class _EditPassword extends State<EditPassword> {
  final _formKey = GlobalKey<FormState>();
  bool _isChecked_CurrentPassword = false;
  bool _isChecked_NewPassword = false;
  bool _isChecked_RepeatCurrentPassword = false;

  bool allFieldsAreValid = false;


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
                    //ล้างค่า textpassword ก่อนออกกรีไม่ได้กดบันทึก ก็ลบออกเลย
                    CurrentPasswordController.text = '';
                    NewPasswordController.text = '';
                    RepeatNewPasswordController.text = '';

                    Navigator.pop(context);
                  },
                ),
                const Expanded(
                  child: Text(
                    'เปลี่ยนรหัสผ่าน',
                    style: textHeading,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Image.asset('assets/icon_settingpage/icon_keylock-removebg-preview.png', height: 60, width: 60),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Text(
              'กำหนดรหัสผ่านของคุณ ด้วยอักขระ 6-18\n ตัวสำหรับการใช้งานบน Aceso',
              style: textnormalLight,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: defaultPadding,
                right: defaultPadding,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [

                    Row(
                      children: [
                        Text('รหัสผ่านปัจจุบัน', style: textnormalLight,),
                      ],
                    ),
                    const TFFCurrentPassword(labeltext: ''),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text('รหัสผ่านใหม่', style: textnormalLight,),
                      ],
                    ),
                    const TFFNewPassword(labeltext: ''),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Text('รหัสผ่านใหม่อีกครั้ง', style: textnormalLight,),
                      ],
                    ),
                    const TFFRepeatNewPassword(labeltext: ''),
                    const SizedBox(height: 15),
                    const SizedBox(height: 15),
                    //---------------------------------------

                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.all(defaultPadding),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                //primary: allFieldsAreValid ? APrimaryColor : Colors.grey,
                primary: APrimaryColor,

              ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // แสดง Popup ค้างไว้ 2 วินาที
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return  AlertDialog(
                          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          content: SizedBox(
                            height: 50,
                            child: Center(

                              child:
                              //CircularProgressIndicator(
                              //  valueColor: AlwaysStoppedAnimation<Color>(APrimaryColor),
                              //),
                              Text('เปลี่ยนรหัสผ่านเรียบร้อย', style: textnormal)

                            ),
                          ),
                        );
                      },
                    );

                    // รอเวลา 2 วินาทีแล้วค่อยเปลี่ยนหน้า
                    Future.delayed(const Duration(seconds: 1), () {
                      print("----------------------------------------------------");

                      print("CurrentPasswordController  = $CurrentPasswordController.text");
                      print("NewPasswordController = $NewPasswordController.text");
                      //String newPassword = NewPasswordController.text;
                      //print("New Password: $newPassword");
                      print("RepeatNewPasswordController = $RepeatNewPasswordController.text");

                      // ปิด Popup
                      Navigator.pop(context);
////------------------------------------------------------------------------

                      // ล้างค่า textpassword
                      CurrentPasswordController.text = '';
                      NewPasswordController.text = '';
                      RepeatNewPasswordController.text = '';
                      print("CurrentPasswordController  = $CurrentPasswordController.text");
                      print("NewPasswordController = $NewPasswordController.text.");
                      print("RepeatNewPasswordController = $RepeatNewPasswordController.text");
                      print("----------------------------------------------------");
////------------------------------------------------------------------------
                      // แสดง SnackBar เมื่อเปลี่ยนรหัสผ่านเรียบร้อยแล้ว
                      //ScaffoldMessenger.of(context).showSnackBar(
                      //  SnackBar(
                      //   content: const Text('เปลี่ยนรหัสผ่านเรียบร้อย',style: textnormal,),
                      // duration: const Duration(seconds: 2),
                      //  ),
                     // );
////------------------------------------------------------------------------
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const EditPassword(),
                        ),
                      );
                    });
                  }
                },

              child: const ButtonOperation(BTname: 'บันทึก'),
            ),
          ),
        ],
      ),
    );
  }

}
