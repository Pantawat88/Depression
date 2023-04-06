import 'package:app_aceso/pages/login.dart';
import 'package:flutter/material.dart';

import '../../background.dart';
import '../../constants.dart';
import '../widget/widget_Textfromfield.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _AgreementState();
}

class _AgreementState extends State<PersonalInformation> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
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
                Expanded(
                  child: Text(
                    'ข้อมูลส่วนตัว',
                    style: textHeading,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'กรอกข้อมูลส่วนตัวของคุณ \nเพื่อให้เราได้รู้จักคุณมากขึ้น โดยข้อมูลนี้ \nจะดำเนินการตามนโยบายที่กำหนดเท่านั้น',
            style: textnormalLight,
            textAlign: TextAlign.center,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: const TFFinformation(labeltext: 'ชื่อ'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 10.0),
                  child: const TFFinformation(labeltext: 'นามสกุล'),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              child: Text('ถัดไป'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PersonalInformation()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
