import 'package:flutter/material.dart';

class form1 extends StatelessWidget {
  const form1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                children: <Widget>[
                  ListView(
                    children: [
                      Text('OK'),

                    ],
                  )
                ]
            )
        )
    );



  }
}
