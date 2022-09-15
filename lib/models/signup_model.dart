import 'dart:convert';

Users usersSignUpFromJson(String str) => Users.fromJson(json.decode(str));

String usersSignUpToJson(Users data) => json.encode(data.toJson());

class Users {
  Users({
    required this.message,
    required this.result,
  });

  String message;
  Result result;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        message: json["message"],
        result: Result.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "result": result.toJson(),
      };
}

class Result {
  Result({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.type,
    required this.date,
    required this.v,
  });

  String id;
  String name;
  String email;
  String phone;
  String password;
  int type;
  DateTime date;
  int v;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        type: json["type"],
        date: DateTime.parse(json["date"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "type": type,
        "date": date.toIso8601String(),
        "__v": v,
      };
}
