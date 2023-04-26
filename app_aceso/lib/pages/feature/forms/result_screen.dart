import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:flutter/material.dart';

import '../../../background.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage("assets/result1.png"),
            width: 280,
          ),
          const SizedBox(height: 70),
          const Text(
            "มีความเสี่ยง",
            style: TextStyle(
              fontFamily: 'Prompt',
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: orangeColor,
            ),
          ),
          const Text(
            "ระดับน้อยมาก",
            style: TextStyle(
              fontFamily: 'Prompt',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: APrimaryColor,
            ),
          ),
          const SizedBox(height: 70),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>  HomePage(),
                    ),
                  );
                },
                child: const Image(
                  image: AssetImage("assets/backhome.png"),
                  width: 80,
                ),
              ),
              const Text(
                "กลับหน้าหลัก",
                style: textsmallLight,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
