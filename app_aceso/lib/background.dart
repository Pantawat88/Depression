import 'package:flutter/material.dart';

class BackgroundForLogin extends StatelessWidget {
  final Widget child;
  const BackgroundForLogin({
    Key? key,
    required this.child,
    this.topImage = "assets/bg_top.png",
    this.bottomImage = "assets/bg_bottom.png",
  }) : super(key: key);

  final String topImage, bottomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            child: Image.asset(
              topImage,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(child: child),
              // กำหนด padding ด้านล่างเท่ากับความสูงของคีย์บอร์ด
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
            ),
          ),
          SizedBox(
            child: Image.asset(
              bottomImage,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, // ทิศทางจากบนลงล่าง
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffDCE0FF),
              Color(0xffffffff),
            ],
            stops: [0.0, 0.1], // แบ่งแยกระดับสี
          ),
        ),
        child: child,
      ),
    );
  }
}
