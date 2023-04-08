import 'package:app_aceso/constants.dart';
import 'package:flutter/material.dart';

import '../widget/widget_button.dart';
import 'success_register.dart';

class CreateAvatar extends StatefulWidget {
  const CreateAvatar({super.key});

  @override
  State<CreateAvatar> createState() => _CreateAvatarState();
}

class _CreateAvatarState extends State<CreateAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    'สร้าง เพื่อนซี้',
                    style: textHeading,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(defaultPadding),
            child: ElevatedButton(
              child: ButtonOperation(BTname: 'ถัดไป'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SuccessRegister()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
