import 'dart:convert' as convert;

import 'package:computop_demo/models/signup_model.dart';
import 'package:http/http.dart' as http;

class Signup {
  static String baseApi = "http://10.0.2.2:3000/auth";
  static var client = http.Client();
  static register(
      {required name,
      required email,
      required phone,
      required password,
      required type}) async {
    var response = await client.post(Uri.parse("$baseApi/signup"),
        headers: {'Content-Type': 'application/json'},
        body: convert.jsonEncode(<String, String>{
          'name': name,
          'email': email,
          'phone': phone,
          'password': password,
          'type': type,
        }));

    if (response.statusCode == 200) {
      var stringObject = response.body;
      var user = usersSignUpFromJson(stringObject);
      return user;
    }
  }
}
