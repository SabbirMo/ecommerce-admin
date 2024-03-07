
import 'dart:convert';

Users usersFromMap(String str) => Users.fromMap(json.decode(str));

String usersToMap(Users data) => json.encode(data.toMap());

class Users {
    final int? userId;
    final String userEmail;
    final String userPassword;

    Users({
        this.userId,
        required this.userEmail,
        required this.userPassword,
    });

    factory Users.fromMap(Map<String, dynamic> json) => Users(
        userId: json["userId"],
        userEmail: json["userEmail"],
        userPassword: json["userPassword"],
    );

    Map<String, dynamic> toMap() => {
        "userId": userId,
        "userEmail": userEmail,
        "userPassword": userPassword,
    };
}
