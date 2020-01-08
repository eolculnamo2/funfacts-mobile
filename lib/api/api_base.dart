import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:fun_facts_mobile/constants/misc_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiBase {
  dynamic makePost(String route, dynamic body) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String url = MiscConstants.SERVER_URL + route;
    print(url);
    var res = await http.post(url, body: json.encode(body), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Bearer-Token': prefs.getString(MiscConstants.JWT_PREF) // may need await
    });
    if (res != null) {
      return res.body;
    }
    return null;
  }
}