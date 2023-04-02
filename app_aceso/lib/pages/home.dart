import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            Text('ขอให้วันนี้เป็นวันที่ดีสำหรับเธอนะ'),
                            Spacer(),
                            //Text('hello'),
                            //ElevatedButton(onPressed: (){}, child: const Icon(Icons.question_mark_outlined)),
                            GestureDetector(
                              onTap: () {
                                //ยังไม่ได้สั่งให้มีป็อบอัพหรือเด้งไปหน้าไหน
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xff646FD4), // กำหนดสีพื้นหลังของวงกลม
                                radius: 20.0, // กำหนดขนาดของวงกลม
                                child: Icon(
                                  Icons.question_mark_outlined, // กำหนดไอคอนที่จะใช้
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
                          image: AssetImage('assets/mato1.gif'),
                          width: 250,
                          height: 250,
                        ),
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

                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
