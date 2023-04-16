import 'package:app_aceso/pages/profile/settingpage.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../login.dart';
import '../widget/widget_button.dart';


class DeleteAccount extends StatelessWidget {
  //const SettingPage({super.key});
  //const ReadPrivacyAgreement({Key? key}) : super(key: key);
  const DeleteAccount({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Iback,
                        color: APrimaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => SettingPage()),
                          );
                        },
                      ),
                    ),
                    //-----------------------------------ส่วนที่เลื่อนคำว่า ลบบัญชีให้อยู่ตรงกลาง-----------------------------------
                    const SizedBox(width: 100),
                    //-----------------------------------ส่วนที่เลื่อนคำว่า ลบบัญชีให้อยู่ตรงกลาง-----------------------------------

                    Expanded(
                      //alignment: Alignment.center,
                      child: Text(
                        'ลบบัญชี',
                        style: textHeading,
                      ),
                    ),


                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(
                    color: const Color(0xffF8F8FE).withOpacity(0.8),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
SizedBox(height: 250,),
                          Text('การลบบัญชีจะเป็นการลบข้อมูลของคุณอย่างถาวร คุณแน่ใจหรือไม่ว่าต้องการดำเนินการต่อ?',style: textHeading,)






                        ],
                      ),
                    ),
                  ),

                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const ButtonOperation(BTname: 'ลบบัญชี'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return delete_accountPopupDialog(context);
                      },
                    );
                  },
                ),

              ],
            ),
          )
      ),
    );
  }


  Widget delete_accountPopupDialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      content: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(

            ),
            const SizedBox(height: 16),
            const Text(
              'คุณแน่ใจว่าต้องการลบบัญชีของคุณ?',
              style: textnormal,
            ),
          ],
        ),
      ),
      actions: <Widget>[

        Expanded(child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 5),
            child: Row(
              children: <Widget>[

                SizedBox(
                  height: 37,
                  width:  120,
                  child: ElevatedButton(
                    onPressed: () {

                      //ออกแล้วไปหน้า login
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomeLogin()),
                      );
                    },
                    child: Text('ลบบัญชี'),
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: APrimaryLightColor),
                      primary: Colors.white,
                      onPrimary: APrimaryColor,
                      elevation: 0,
                    ),
                  ),
                ),
                //SizedBox(width: 80,),
                Spacer(),
                SizedBox(
                  height: 37,
                  width:  120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('ไม่ใช่'),
                  ),
                ),
              ],
            ),
          ),

        )
        )

      ],
    );
  }







}
