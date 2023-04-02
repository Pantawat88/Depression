import 'package:app_aceso/pages/login.dart';
import 'package:flutter/material.dart';

import '../../background.dart';
import '../../constants.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _AgreementState();
}

class _AgreementState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 45.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Iback,
              color: APrimaryColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 20),
            Text(
              'ข้อมูลส่วนตัว',
            ),
            Text('กรอกข้อมูลส่วนตัวของคุณ'),
            Text('เพื่อให้เราได้รู้จักคุณมากขึ้น โดยข้อมูลนี้'),
            Text('จะดำเนินการตามนโยบายที่กำหนดเท่านั้น'),
            SizedBox(height: 40),
            SizedBox(height: 50),
            ElevatedButton(
              child: Text('ถัดไป'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PersonalInformation()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
