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
          style: tButton,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
