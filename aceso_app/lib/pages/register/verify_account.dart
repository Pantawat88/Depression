import 'package:aceso_app/background.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IconButton(
              alignment: Alignment.centerRight,
              icon: Iclear,
              color: APrimaryColor,
              onPressed: () {},
            ),
            Text(
              'กรอกรหัสยืนยัน',
            ),
          ],
        ),
      ),
    );
  }
}
