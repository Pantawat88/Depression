import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = "http://localhost:3000/";

  //post method
  static addUser(Map<String, dynamic> udata) async {
    print(udata);
    var url = Uri.parse("${baseUrl}insertUser");

    try {
      final res = await http.post(url, body: jsonEncode(udata));

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print(data);
      } else {
        print("Failed to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
