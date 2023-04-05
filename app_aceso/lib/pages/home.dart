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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 50.0),
                          child: Row(
                            children: [
                              Text(
                                'ขอให้วันนี้เป็นวันที่ดีสำหรับเธอนะ',
                                style: textsmall,
                              ),
                              Spacer(),
                              //Text('hello'),
                              //ElevatedButton(onPressed: (){}, child: const Icon(Icons.question_mark_outlined)),
                              GestureDetector(
                                onTap: () {
                                  //ยังไม่ได้สั่งให้มีป็อบอัพหรือเด้งไปหน้าไหน
                                },
                                child: CircleAvatar(
                                  backgroundColor: Color(
                                      0xff646FD4), // กำหนดสีพื้นหลังของวงกลม
                                  radius: 20.0, // กำหนดขนาดของวงกลม
                                  child: Icon(
                                    Icons
                                        .question_mark_outlined, // กำหนดไอคอนที่จะใช้
                                    color: Colors.white, // กำหนดสีของไอคอน
                                    size: 30.0, // กำหนดขนาดของไอคอน
                                  ),
                                ),
                              ),
                            ], // children of Row
                          ),
                        ),
                        SizedBox(
                          child: Image(
                            image: AssetImage('assets/avatar/mato/mato1.gif'),
                            width: 230,
                            height: 230,
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
                      Text("อารม์ประจำวัน"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return initial_form();
                  }),
                );
              },
              child: Text(
                'ทำแบบประเมิน',
                style: textButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
