import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  //const SettingPage({super.key});
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const <Widget>[Text('test')],
      )),
    );
  }
}
