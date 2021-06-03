// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.id,
    this.followers,
    this.followings,
    this.name,
    this.bio,
    this.profilePicture,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String id;
  int followers;
  int followings;
  String name;
  String bio;
  String profilePicture;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    followers: json["followers"],
    followings: json["followings"],
    name: json["name"],
    bio: json["bio"],
    profilePicture: json["profile_picture"] == null ? null : json["profile_picture"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "followers": followers,
    "followings": followings,
    "name": name,
    "bio": bio,
    "profile_picture": profilePicture == null ? null : profilePicture,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "__v": v,
  };
}
