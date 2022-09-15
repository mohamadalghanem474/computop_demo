import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../../models/signin_model.dart';

class Signin {
  static String baseApi = "http://10.0.2.2:3000/auth";
  static var client = http.Client();

  static signin({required email, required password}) async {
    var response = await client.post(Uri.parse("$baseApi/signin"),
        headers: {'Content-Type': 'application/json'},
        body: convert.jsonEncode(
            <String, String>{'email': email, 'password': password}));

    if (response.statusCode == 200) {
      var stringObject = response.body;
      var user = usersSignInFromJson(stringObject);
      return user;
    } else {
      return null;
    }
  }
}
