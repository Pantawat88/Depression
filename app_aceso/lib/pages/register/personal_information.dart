import 'dart:ffi';

import 'package:app_aceso/pages/register/set_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../background.dart';
import '../../constants.dart';
import '../widget/widget_Textfromfield.dart';
import '../widget/widget_button.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _AgreementState();
}

class _AgreementState extends State<PersonalInformation> {
  final _formKey = GlobalKey<FormState>();

  String? dropdownValue;
  final listItem = [
    "วิศวกรรมศาสตร์",
    "สถาปัตยกรรม ศิลปะและการออกแบบ (สถาปัตยกรรมศาสตร์)",
    "ครุศาสตร์อุตสาหกรรมและเทคโนโลยี",
    "เทคโนโลยีการเกษตร",
    "วิทยาศาสตร์",
    "อุตสาหกรรมอาหาร (อุตสาหกรรมเกษตร)",
    "เทคโนโลยีสารสนเทศ",
    "วิทยาลัยนานาชาติ",
    "วิทยาลัยเทคโนโลยีและนวัตกรรมวัสดุ (วิทยาลัยนาโนเทคโนโลยีพระจอมเกล้าลาดกระบัง)",
    "วิทยาลัยนวัตกรรมการผลิตขั้นสูง",
    "บริหารธุรกิจ (การบริหารและจัดการ)",
    "วิทยาลัยอุตสาหกรรมการบินนานาชาติ",
    "ศิลปศาสตร์",
    "แพทยศาสตร์",
    "วิทยาลัยวิศวกรรมสังคีต",
    "วิทยาเขตชุมพรเขตรอุดมศักดิ์",
    "ทันตแพทยศาสตร์",
  ];

  late DateTime dateTime; // กำหนดตัวแปร date เป็น late และไม่กำหนดค่าเริ่มต้น

  @override
  void initState() {
    super.initState();
    dateTime = DateTime.now();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // กำหนดค่าเริ่มต้นสำหรับ Text ใน child ของ CupertinoButton
    final defaultDateText = 'วัน เดือน ปีเกิด';
    setState(() {
      _dateText = defaultDateText;
    });
  }

  String _dateText = '';

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              top: 50,
              left: 20,
              right: 60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Iback,
                  color: APrimaryColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Text(
                    'ข้อมูลส่วนตัว',
                    style: textHeading,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'กรอกข้อมูลส่วนตัวของคุณ \nเพื่อให้เราได้รู้จักคุณมากขึ้น โดยข้อมูลนี้ \nจะดำเนินการตามนโยบายที่กำหนดเท่านั้น',
            style: textnormalLight,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 30,
                left: defaultPadding,
                right: defaultPadding,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const TFFinformation(labeltext: 'ชื่อ'),
                    SizedBox(height: 15),
                    const TFFinformation(labeltext: 'นามสกุล'),
                    SizedBox(height: 15),
                    const TFFinformation(labeltext: 'ชื่อเล่น'),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: APrimaryveryLight,
                      ),
                      child: dropdown(),
                    ),
                    SizedBox(height: 15),
                    //---------------------------------------
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 13),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: APrimaryveryLight,
                      ),
                      child: Row(
                        children: [
                          Text(
                            _dateText,
                            style: textnormal,
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              showCupertinoModalPopup(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    color: Colors.white,
                                    child: Column(
                                      children: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            "ตกลง",
                                            style: textsmall,
                                          ),
                                        ),
                                        Expanded(
                                          child: CupertinoDatePicker(
                                            initialDateTime: dateTime,
                                            mode: CupertinoDatePickerMode.date,
                                            minimumDate: DateTime(1900),
                                            maximumDate: DateTime.now(),
                                            onDateTimeChanged: (date) {
                                              setState(() {
                                                dateTime = date;
                                                _dateText =
                                                    '${date.day}-${date.month}-${date.year}';
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            icon: Icon(
                              Icons.calendar_month_rounded,
                              color: APrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(defaultPadding),
            child: ElevatedButton(
              child: ButtonOperation(BTname: 'ถัดไป'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SetPassword()),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget dropdown() => DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text("เลือกคณะ", style: textformfield),
          value: dropdownValue,
          iconSize: 36,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: APrimaryColor,
          ),
          isExpanded: true,
          elevation: 10,
          style: textnormal,
          onChanged: (newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: listItem.map((valueItem) {
            return DropdownMenuItem<String>(
              value: valueItem,
              child: Text(valueItem),
            );
          }).toList(),
        ),
      );
}
