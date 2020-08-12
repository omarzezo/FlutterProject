import 'package:meta/meta.dart';

class LoginResponse {
  final int userId;
  final int id;
  final String title;
  final String token;

  LoginResponse({this.userId, this.id, this.title,this.token});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      token: json['token'],
    );
  }
}