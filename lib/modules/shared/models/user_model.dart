import 'dart:convert';

class UserModel {
  final String name;
  final String image;
  final int score;

  UserModel({
    required this.name,
    required this.image,
    this.score = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'score': score,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      image: map['image'],
      score: map['score'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
