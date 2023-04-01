import 'package:app_aceso/pages/login.dart';
import 'package:app_aceso/pages/register/personal_information.dart';
import 'package:flutter/material.dart';

import '../../background.dart';
import '../../constants.dart';

class Agreement extends StatefulWidget {
  const Agreement({super.key});

  @override
  State<Agreement> createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 45.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Iclear,
                color: APrimaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => WelcomeLogin()),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'นโยบายความเป็นส่วนตัว',
            ),
            Text(
                'กหดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดดด'),
            SizedBox(height: 40),
            Text('ฉันยอมรับนโยบายความเป็นส่วนตัวนี้'),
            SizedBox(height: 50),
            ListTile(
                leading: Checkbox(value: false, onChanged: (value) {},),
                title: const Text("ฉันยอมรับนโยบายความเป็นส่วนตัว"),
            ),
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
