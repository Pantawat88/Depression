import 'package:flutter/material.dart';

const APrimaryColor = Color(0xff646FD4);
const APrimaryLightColor = Color(0xff9BA3EB);

const double defaultPadding = 35.0;

const Iclear = Icon(Icons.clear_rounded, size: 40); //X
const Iback = Icon(Icons.arrow_back_ios_rounded, size: 25); //<

////ฟ้อนสำหรับ หัวข้อเรื่องตัวหนา
const TextStyle tHeading = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  color: APrimaryColor,
);

////ฟ้อนสำหรับ ข้อความธรรมดาสีเข้ม
const TextStyle text = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 18.0,
  color: APrimaryColor,
);

const TextStyle textsmall = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 15.0,
  color: APrimaryColor,
);

////ฟ้อนสำหรับ ข้อความธรรมดาสีอ่อน
const TextStyle textLight = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 18.0,
  color: APrimaryLightColor,
);

////ฟ้อนสำหรับ ข้อความขนาดเล็กสีเข้มตัวหนา
const TextStyle tmini = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 15.0,
  fontWeight: FontWeight.bold,
  color: APrimaryColor,
);

////ฟ้อนสำหรับ ข้อความขนาดเล็กสีอ่อน
const TextStyle tminiLight = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 15.0,
  color: APrimaryLightColor,
);

////ฟ้อนสำหรับ ปุ่ม
const TextStyle tButton = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 18.0,
);

////ฟ้อนสำหรับ hinttext
const TextStyle tTextformfield = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 18.0,
  color: APrimaryLightColor,
);

////ฟ้อนสำหรับ text ที่ให้ผู้ใช้กรอก
const TextStyle tKey = TextStyle(
  fontFamily: 'Prompt',
  fontSize: 18.0,
  color: APrimaryColor,
);
