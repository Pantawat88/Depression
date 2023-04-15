import 'package:flutter/material.dart';

class Form1 extends StatelessWidget {
  const Form1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      ListView(
        children: const [
          Text('OK'),
        ],
      )
    ])));
  }
}
