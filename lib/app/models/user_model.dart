import 'dart:convert';

class UserModel {
  final String email;
  final String registerType;
  final String imgAvatar;

  UserModel({
    required this.email,
    required this.registerType,
    required this.imgAvatar,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      registerType: map['registerType'],
      imgAvatar: map['imgAvatar'],
    );
  }

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'registerType': registerType,
      'imgAvatar': imgAvatar,
    };
  }

  String toJson() => json.encode(toMap());
}
