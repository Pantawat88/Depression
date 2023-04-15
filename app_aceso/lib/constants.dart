import 'package:flutter/material.dart';

const APrimaryColor = Color(0xff646FD4);
const APrimaryLightColor = Color(0xff9BA3EB);
const APrimaryveryLight = Color(0xffE8EAFF);

const double defaultPadding = 35.0;

const Iclear = Icon(
  Icons.clear_rounded,
  size: 40,
); //X
const Iback = Icon(
  Icons.arrow_back_ios_rounded,
  size: 30,
  color: APrimaryLightColor,
); //<
const Iquestion_mark = Icon(
  Icons.question_mark_outlined,
  size: 30,
  color: Colors.white,
); //?
const Ireport = Icon(
  Icons.report,
  size: 35,
  color: APrimaryColor,
); //!

////ฟ้อนสำหรับ หัวข้อเรื่องตัวหนา
const TextStyle textHeading = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 19.0,
  fontWeight: FontWeight.bold,
  color: APrimaryColor,
);
////ฟ้อนสำหรับ ข้อความธรรมดา
const TextStyle textnormal = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 16.0,
  color: APrimaryColor,
);

////ฟ้อนสำหรับ ข้อความธรรมดาสีเข้ม
const TextStyle textnormalbold = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: APrimaryColor,
);

////ฟ้อนสำหรับ ข้อความธรรมดาสีอ่อน
const TextStyle textnormalLight = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 16,
  color: APrimaryLightColor,
);

const TextStyle textsmall = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 14.0,
  color: APrimaryColor,
);

////ฟ้อนสำหรับ ข้อความขนาดเล็กสีเข้มตัวหนา
const TextStyle textsmallbold = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 14.0,
  fontWeight: FontWeight.bold,
  color: APrimaryColor,
);

////ฟ้อนสำหรับ ข้อความขนาดเล็กสีอ่อน
const TextStyle textsmallLight = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 14.0,
  color: APrimaryLightColor,
);

////ฟ้อนสำหรับ ปุ่ม
const TextStyle textButton = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 16.0,
  color: Colors.white,
);

////ฟ้อนสำหรับ hinttext
const TextStyle textformfield = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 16.0,
  color: APrimaryLightColor,
);

////ฟ้อนสำหรับ text ที่ให้ผู้ใช้กรอก
const TextStyle textKey = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 16.0,
  color: APrimaryColor,
);


const TextStyle textnormalbigWhite = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 25.0,
  color: Colors.white,
);

const TextStyle textnormalsmallWhite = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 20.0,
  color: Colors.white,
);