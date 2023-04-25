import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:flutter/material.dart';

import '../../../background.dart';
import 'package:app_aceso/pages/ml.dart';

class ResultScreen extends StatefulWidget {
  final List<String> phqList2;

  const ResultScreen({Key? key, required this.phqList2}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<String> phqList2 = [];

  late String _result;

  @override
  void initState() {
    super.initState();
    phqList2 = widget.phqList2;
    final PHQ9ResultChecker _resultChecker = PHQ9ResultChecker(
      phq1: phqList2[0],
      phq2: phqList2[1],
      phq3: phqList2[2],
      phq4: phqList2[3],
      phq5: phqList2[4],
      phq6: phqList2[5],
      phq7: phqList2[6],
      phq8: phqList2[7],
      phq9: phqList2[8],
    );
    _result = _resultChecker.checkResult()!;
  }

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
          Text(
            _result,
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
                      builder: (BuildContext context) => const HomePage(),
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
