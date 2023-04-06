import 'package:app_aceso/pages/feature.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ButtonOperation extends StatelessWidget {
  final String BTname;

  const ButtonOperation({Key? key, required this.BTname}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 50,
      child: Center(
        child: Text(
          BTname,
          style: textButton,
        ),
      ),
    );
  }
}
