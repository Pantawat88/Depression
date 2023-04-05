import 'package:app_aceso/pages/forms/initial_form.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/background/bg_moto1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 35,
                            top: 50,
                            right: 35,
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 280,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(18),
                                    bottomRight: Radius.circular(18),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '  ขอให้วันนี้เป็นวันที่ดีสำหรับเธอนะ...',
                                    style: textnormal,
                                  ),
                                ),
                              ),
                              Spacer(),
                              //Text('hello'),
                              //ElevatedButton(onPressed: (){}, child: const Icon(Icons.question_mark_outlined)),
                              GestureDetector(
                                onTap: () {
                                  //ยังไม่ได้สั่งให้มีป็อบอัพหรือเด้งไปหน้าไหน
                                },
                                child: CircleAvatar(
                                  backgroundColor:
                                      APrimaryColor, // กำหนดสีพื้นหลังของวงกลม
                                  radius: 18.0, // กำหนดขนาดของวงกลม
                                  child: Iquestion_mark,
                                ),
                              ),
                            ], // children of Row
                          ),
                        ),
                        Container(
                          child: Image(
                            image: AssetImage('assets/avatar/mato/mato1.gif'),
                            width: 265,
                            height: 265,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "อารมณ์ประจำวัน",
                        style: textHeading,
                      ),
                    ],
                  ),
                  //--------*-*--------*--*---- sizeboxข้างล่างแค่ใส่ test การ scroll เอาออกได้
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            //--------------------ส่วนของการทำแบบประเมิน
            Container(
              width: MediaQuery.of(context).size.width,
              height: 260,
              decoration: BoxDecoration(
                color: APrimaryveryLight,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/form.png'),
                    width: 170,
                    height: 125,
                  ),
                  Text(
                    'ประเมินความเสี่ยงโรคซึมเศร้า',
                    style: textHeading,
                  ),
                  Text(
                    'หากคุณรู้สึกเศร้า กังวล คุณสามารถทำ\nแบบทดสอบของเราเพื่อประเมินผลในเบื้องต้นได้',
                    style: textsmallLight,
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return initial_form();
                        }),
                      );
                    },
                    child: SizedBox(
                      width: 270,
                      height: 40,
                      child: Center(
                        child: Text(
                          'ทำแบบประเมิน',
                          style: textButton,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
