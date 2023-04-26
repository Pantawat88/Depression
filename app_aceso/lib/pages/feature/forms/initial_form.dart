import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/feature/assessment_formpage.dart';
import 'package:app_aceso/pages/feature/forms/question_screen.dart';
import 'package:app_aceso/pages/home.dart';
import 'package:flutter/material.dart';

class InitialForm extends StatefulWidget {
  const InitialForm({super.key});

  @override
  State<InitialForm> createState() => _InitialFormState();
}

class _InitialFormState extends State<InitialForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                children: [
                  IconButton(
                    icon: Iback,
                    color: APrimaryColor,
                    onPressed: () {
                      //Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AssessmentForm()),
                      );
                    },
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      //ยังไม่ได้สั่งให้มีป็อบอัพหรือเด้งไปหน้าไหน
                    },
                    child: Ireport, // กำหนดไอคอนที่จะใช้
                    //color: Colors.white, // กำหนดสีของไอคอน
                  ),
                ],
              ),
            ),
          ),
          const Text(
            'แบบประเมินโรคซึมเศร้า',
            style: textHeading,
          ),
          const SizedBox(height: 70),
          const Image(
            image: AssetImage('assets/initial_form.png'),
            width: 300,
            height: 300,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 70),
            child: Text(
              'ทำแบบประเมินความเสี่ยงโรคซึมเศร้า\nกันเถอะ เลือกคำตอบที่ตรงตามความรู้สึก\n'
              'และเราจะอยู่ข้างๆ เล้ง เสมอ',
              style: textnormalLight,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuestionScreen()),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: APrimaryColor,
                  ),
                  child: const Center(
                    child: Text(
                      'เริ่มทำแบบประเมิน',
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ////ex
        ],
      ),
    );
  }
}
