import 'dart:convert';

Users usersSignInFromJson(String str) => Users.fromJson(json.decode(str));

String usersSignInToJson(Users data) => json.encode(data.toJson());

//  @override
//   String toString() {
//     return "User(would: $would, rather: $rather, wouldClick: $wouldClick, ratherClick: $ratherClick)";
//   }

class Users {
  Users({
    required this.message,
    required this.user,
    required this.token,
  });

  String message;
  List<User> user;
  String token;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        message: json["message"],
        user: List<User>.from(json["user"].map((x) => User.fromJson(x))),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "user": List<dynamic>.from(user.map((x) => x.toJson())),
        "token": token,
      };
}

class User {
  User({
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

  factory User.fromJson(Map<String, dynamic> json) => User(
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
