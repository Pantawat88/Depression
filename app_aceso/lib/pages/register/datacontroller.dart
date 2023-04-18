import 'package:flutter/material.dart';

import '../../services/api.dart';

class DataController {
  static final DataController _instance = DataController._internal();

  factory DataController() {
    return _instance;
  }

  DataController._internal();

  final TextEditingController userEmailControll = TextEditingController();
  final TextEditingController userPasswordControll = TextEditingController();
  final TextEditingController userFNameControll = TextEditingController();
  final TextEditingController userLNameControll = TextEditingController();
  final TextEditingController userNickNameControll = TextEditingController();
  final TextEditingController userBirthdayDateControll =
      TextEditingController();
  final TextEditingController userFacultyControll = TextEditingController();
  final TextEditingController avatarIDControll = TextEditingController();

  Future<void> addUser() async {
    var data = {
      "userEmail": userEmailControll.text,
      "userPassword": userPasswordControll.text,
      "userFName": userFNameControll.text,
      "userLName": userLNameControll.text,
      "userNickName": userNickNameControll.text,
      "userBirthdayDate": userBirthdayDateControll.text,
      "userFaculty": userFacultyControll.text,
      "avatarID": avatarIDControll.text,
    };

    await Api.addUser(data);
  }
}
