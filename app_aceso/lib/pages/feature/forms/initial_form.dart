import 'package:app_aceso/constants.dart';
import 'package:app_aceso/pages/feature/forms/form_1.dart';
import 'package:flutter/material.dart';

class initial_form extends StatefulWidget {
  const initial_form({super.key});

  @override
  State<initial_form> createState() => _initial_formState();
}

class _initial_formState extends State<initial_form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 25),
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
                        Navigator.pop(context);
                      },
                    ),
                    Spacer(),
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
            Text(
              'แบบประเมินโรคซึมเศร้า',
              style: textHeading,
            ),
            SizedBox(height: 70),
            Image(
              image: AssetImage('assets/initial_form.png'),
              width: 300,
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
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
                      MaterialPageRoute(builder: (context) => form1()),
                    );
                  },
                  child: Container(
                    width: double.maxFinite,
                    height: 80,
                    decoration: BoxDecoration(
                      color: APrimaryColor,
                    ),
                    child: Center(
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
      ),
    );
  }
}
