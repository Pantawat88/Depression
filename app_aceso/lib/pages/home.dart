import 'package:app_aceso/pages/feature.dart';
import 'package:app_aceso/pages/nav.dart';
import 'package:app_aceso/pages/profile.dart';
//import 'package:app_aceso/pages/profile/edit_avatar.dart'; //เรียกใช้ค่าตัวแปร backgroundImg หากมีการเปลี่ยนแปลงของ Avatar
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'feature/forms/initial_form.dart';
import 'package:app_aceso/pages/register/create_avatar.dart'; //เรียกใช้การประกาศตัวแปร backgroundImg ในหน้านี้
//import 'package:app_aceso/pages/register/success_register.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  void _onTap(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FeaturePage()),
        );
      } else if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfilePage()),
        );
      }
    }
  }

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
                        //image: AssetImage('assets/background/bg_moto1.png'),

                        image:
                            AssetImage('assets/background/$backgroundImg.png'),

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
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(18),
                                    bottomRight: Radius.circular(18),
                                  ),
                                ),
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '  ขอให้วันนี้เป็นวันที่ดีสำหรับเธอนะ...',
                                    style: textsmall,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              //Text('hello'),
                              //ElevatedButton(onPressed: (){}, child: const Icon(Icons.question_mark_outlined)),
                              GestureDetector(
                                onTap: () {
                                  //ยังไม่ได้สั่งให้มีป็อบอัพหรือเด้งไปหน้าไหน
                                },
                                child: const CircleAvatar(
                                  backgroundColor:
                                      APrimaryColor, // กำหนดสีพื้นหลังของวงกลม
                                  radius: 18.0, // กำหนดขนาดของวงกลม
                                  child: Iquestion_mark,
                                ),
                              ),
                            ], // children of Row
                          ),
                        ),

                        //const Image(
                        //  image: AssetImage('assets/avatar/mato/mato1.gif'),
                        //  width: 265,
                        //  height: 265,
                        //),
                        Container(
                          width: 265,
                          height: 265,
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 0.0),
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: selectedName == "มาโต้"
                                    ? Image.asset(
                                        'assets/avatar/mato/mato1.gif')
                                    : selectedName == "เนเน่"
                                        ? Image.asset(
                                            'assets/avatar/nene/nene3.gif')
                                        : selectedName == "หูหนู"
                                            ? Image.asset(
                                                'assets/avatar/huhnu/huhnu1.gif')
                                            : selectedName == "เนโกะ"
                                                ? Image.asset(
                                                    'assets/avatar/neko/neko1.gif')
                                                : selectedName == "ราเม็ง"
                                                    ? Image.asset(
                                                        'assets/avatar/ramen/ramen1.gif')
                                                    : selectedName == "โชน"
                                                        ? Image.asset(
                                                            'assets/avatar/chon/chon1.gif')
                                                        : null,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: const <Widget>[
                        const SizedBox(width: 20),
                        const Image(
                          image: AssetImage('assets/meter.png'),
                          width: 35,
                          height: 55,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "อารมณ์ประจำวัน",
                          style: textHeading,
                        ),
                      ],
                    ),
                  ),

                  //--------------------------------ส่วนอิโมจิอารมณ์
                  Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return _buildPopupDialog(context);
                            },
                          );
                        },
                        child: Image.asset('assets/emoji/good.png',
                            height: 50, width: 50),
                      ),
                    ],
                  ),
                  //--------------------------------ส่วนอิโมจิอารมณ์

                  //--------*-*--------*--*---- sizeboxข้างล่างแค่ใส่ test การ scroll เอาออกได้
                  const SizedBox(height: 30),
                ],
              ),
            ),
            //const SizedBox(height: 50),
            //--------------------ส่วนของการทำแบบประเมิน
            Container(
              width: MediaQuery.of(context).size.width,
              height: 270,
              decoration: const BoxDecoration(
                color: APrimaryveryLight,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/form.png'),
                    width: 170,
                    height: 125,
                  ),
                  const Text(
                    'ประเมินความเสี่ยงโรคซึมเศร้า',
                    style: textHeading,
                  ),
                  const Text(
                    'หากคุณรู้สึกเศร้า กังวล คุณสามารถทำ\nแบบทดสอบของเราเพื่อประเมินผลในเบื้องต้นได้',
                    style: textsmallLight,
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const InitialForm();
                        }),
                      );
                    },
                    child: const SizedBox(
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
      bottomNavigationBar: NavBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      //title: const Text('Popup example'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                color: Color(0xff646FD4),
              ),
            ),
          ),

          //-------------------------------ส่วนเนื้อหา-------------------------------
          Container(
            child: Column(
              children: [
                //-------------------แถวที่ 1------------------
                Column(
                  children: [],
                ),
                //------------------แถวที่ 1------------------
                //------------------แถวที่ 2------------------
                Column(),
                //------------------แถวที่ 2------------------
              ],
            ),
          ),
          //-------------------------------ส่วนเนื้อหา-------------------------------

          Text('Popup content'),
          Text('Popup content'),
          Text('Popup content'),
        ],
      ),

      actions: <Widget>[
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); //ไว้ออกหลังจากทำการบันทึกค่าแล้ว
                },
                child: Text('บันทึก', style: textnormalsmallWhite))),
      ],
    );
  }
}
