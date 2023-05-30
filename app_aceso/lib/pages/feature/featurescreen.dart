import 'package:app_aceso/pages/feature/assessment_formpage.dart';
import 'package:app_aceso/pages/feature/feelingpage.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class FeatureScreen extends StatelessWidget {
  const FeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: lightestColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                  child: Text(
                    'กิจกรรม',
                    style: textHeading,
                  ),
                ),
                _boxMenuform(context),
                const SizedBox(height: 20),
                _boxMenufeeling(context),
              ],
            ),
          )),
    );
  }

  Widget _boxMenuform(context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return const AssessmentForm(); //
              }),
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            padding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
            height: 110,
            decoration: BoxDecoration(
              color: APrimaryveryLight,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Text(
                  "แบบประเมิน\nPHQ-9",
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 18.0,
                    color: APrimaryColor,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "assets/form.png",
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _boxMenufeeling(context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return const FeelingPage(); //
              }),
            );
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            padding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
            height: 110,
            decoration: BoxDecoration(
              color: APrimaryveryLight,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Text(
                  "ไดอารี่ความรู้สึก",
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 18.0,
                    color: APrimaryColor,
                  ),
                ),
                const Spacer(),
                Image.asset(
                  "assets/emoji/relaxed.png",
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
