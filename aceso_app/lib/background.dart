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
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Image.asset(
                topImage,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                bottomImage,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(child: child),
          ],
        ),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
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
