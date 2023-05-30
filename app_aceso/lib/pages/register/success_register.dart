import 'package:app_aceso/background.dart';
import 'package:app_aceso/pages/home.dart';
//import 'package:app_aceso/pages/profile/edit_avatar.dart';
//import 'package:app_aceso/pages/profile/edit_avatar.dart';
import 'package:flutter/material.dart';
import 'package:app_aceso/constants.dart';
import '../widget/widget_button.dart';
import 'package:app_aceso/pages/register/personal_information.dart';

import 'package:app_aceso/pages/register/create_avatar.dart';

class SuccessRegister extends StatefulWidget {
  final selectedName;
  //const SuccessRegister({super.key});
  const SuccessRegister({Key? key, this.selectedName}) : super(key: key);

  @override
  State<SuccessRegister> createState() => _SuccessRegister();
}

String Regis = 'ลงทะเบียนสำเร็จ';

class _SuccessRegister extends State<SuccessRegister> {
  String Nickname = 'Leng';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'ลงทะเบียน',
                            style: textHeading,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'เสร็จเรียบร้อยแล้ว',
                            style: textHeadingOrange,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 260,
                    height: 270,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: selectedName == "มาโต้"
                          ? Image.asset('assets/avatar/mato/mato3.gif')
                          : selectedName == "เนเน่"
                              ? Image.asset('assets/avatar/nene/nene2.gif')
                              : selectedName == "หูหนู"
                                  ? Image.asset(
                                      'assets/avatar/huhnu/huhnu4.gif')
                                  : selectedName == "เนโกะ"
                                      ? Image.asset(
                                          'assets/avatar/neko/neko2.gif')
                                      : selectedName == "ราเม็ง"
                                          ? Image.asset(
                                              'assets/avatar/ramen/ramen2.gif')
                                          : selectedName == "โชน"
                                              ? Image.asset(
                                                  'assets/avatar/chon/chon3.gif')
                                              : null,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 300,
                      ),
                      Text(
                        'ยินดีต้อนรับ',
                        style: textnormalBig,
                      ),
                      Text(
                        '$Nickname',
                        style: textnormalBigOrange,
                      ),
                      Text(
                        'เข้าสู่ Aceso มาเช็คสุขภาพใจ\nไปพร้อมกับมาโต้กันเถอะ',
                        style: textnormalBig,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  //SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(defaultPadding),
              child: ElevatedButton(
                child: const ButtonOperation(BTname: 'เริ่มต้นใช้งาน'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const HomePage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
