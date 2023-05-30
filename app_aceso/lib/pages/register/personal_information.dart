import 'package:app_aceso/pages/register/set_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../background.dart';
import '../../constants.dart';

import '../widget/widget_button.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _AgreementState();
}

final TextEditingController FNameInformationController = TextEditingController();//ตัวแปรชื่อจริง หน้า กรอกข้อมูลส่วนตัว
final TextEditingController LNameInformationController = TextEditingController();//ตัวแปรนามสกุล หน้า กรอกข้อมูลส่วนตัว
final TextEditingController NNameInformationController = TextEditingController();//ตัวแปรชื่อเล่น หน้า กรอกข้อมูลส่วนตัว
//dropdownValue ค่าคณะ ยังไม่ได้ดึงมาใช้

var name_f;


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
            margin: const EdgeInsets.only(
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
                const Expanded(
                  child: Text(
                    'ข้อมูลส่วนตัว',
                    style: textHeading,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'กรอกข้อมูลส่วนตัวของคุณ \nเพื่อให้เราได้รู้จักคุณมากขึ้น โดยข้อมูลนี้ \nจะดำเนินการตามนโยบายที่กำหนดเท่านั้น',
            style: textnormalLight,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 30,
                left: defaultPadding,
                right: defaultPadding,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    ///////////////////
                    TextFormField(
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'กรุณากรอก';
                        }
                        return null;
                      },
                      controller: FNameInformationController,
                      textInputAction: TextInputAction.next,
                      cursorColor: APrimaryColor,
                      style: textKey,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12.0)),
                        filled: true,
                        fillColor: APrimaryveryLight,
                        labelText: "ชื่อ",
                        labelStyle: textformfield,
                        contentPadding: const EdgeInsets.only(
                            top: 12.0, bottom: 12.0, left: 12.0),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'กรุณากรอก';
                        }
                        return null;
                      },
                      controller: LNameInformationController,
                      textInputAction: TextInputAction.next,
                      cursorColor: APrimaryColor,
                      style: textKey,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12.0)),
                        filled: true,
                        fillColor: APrimaryveryLight,
                        labelText: "นามสกุล",
                        labelStyle: textformfield,
                        contentPadding: const EdgeInsets.only(
                            top: 12.0, bottom: 12.0, left: 12.0),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'กรุณากรอก';
                        }
                        return null;
                      },
                      controller: NNameInformationController,
                      textInputAction: TextInputAction.next,
                      cursorColor: APrimaryColor,
                      style: textKey,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12.0)),
                        filled: true,
                        fillColor: APrimaryveryLight,
                        labelText: "ชื่อเล่น",
                        labelStyle: textformfield,
                        contentPadding: const EdgeInsets.only(
                            top: 12.0, bottom: 12.0, left: 12.0),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: APrimaryveryLight,
                      ),
                      child: dropdown(),
                    ),
                    const SizedBox(height: 15),
                    //---------------------------------------
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
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
                          const Spacer(),
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
                                                print("dateTime = $dateTime");
                                                print("dateTime = $_dateText");
                                                print("date.day = ${date.day}");
                                                print("date.month = ${date.month}");
                                                print("date.year ${date.year}");
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
                            icon: const Icon(
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
            margin: const EdgeInsets.all(defaultPadding),
            child: ElevatedButton(
              child: const ButtonOperation(BTname: 'ถัดไป'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {

                  var fname = FNameInformationController.text;
                  var lname = LNameInformationController.text;
                  var nname = NNameInformationController.text;
                  print("FNameInformationController = $fname");
                  print("LNameInformationController = $lname");
                  print("NNameInformationController = $nname");
                  name_f = dropdownValue;


                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const SetPassword()),
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
          hint: const Text("เลือกคณะ", style: textformfield),
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
              dropdownValue = newValue;
              print("คณะที่เลือก = $dropdownValue");
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
