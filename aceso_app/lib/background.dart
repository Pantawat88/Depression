import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final String topImage, bottomImage;
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/bg_top.png",
    this.bottomImage = "assets/bg_bottom.png",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
