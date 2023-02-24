import 'package:flutter/material.dart';
//import 'package:flutter_launcher_icons/xml_templates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: CounterArea(),
    );
  }
}

class CounterArea extends StatefulWidget {
  @override
  State<CounterArea> createState() => _CounterAreaState();
}

class _CounterAreaState extends State<CounterArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage('assets/img1.png'),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/appname.png'),
                height: 100,
                width: 200,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(100, 111, 212, 222),
                ),
                onPressed: () {},
                child: Text('เข้าสู่ระบบ',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              )
            ],
          ),
        ),
        Container(
          child: Image(
            image: AssetImage('assets/img2.png'),
          ),
        ),
      ],
    ));
  }
}
