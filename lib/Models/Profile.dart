// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  Profile({
    this.active,
    this.isAdmin,
    this.isMerchant,
    this.followers,
    this.followings,
    this.id,
    this.email,
    this.name,
    this.bio,
    this.phone,
    this.profilePicture,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  bool active;
  bool isAdmin;
  bool isMerchant;
  List<Follow> followers;
  List<Follow> followings;
  String id;
  String email;
  String name;
  String bio;
  String phone;
  String profilePicture;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
    active: json["active"],
    isAdmin: json["is_admin"],
    isMerchant: json["is_merchant"],
    followers: List<Follow>.from(json["followers"].map((x) => Follow.fromJson(x))),
    followings: List<Follow>.from(json["followings"].map((x) => Follow.fromJson(x))),
    id: json["_id"],
    email: json["email"],
    name: json["name"],
    bio: json["bio"],
    phone: json["phone"],
    profilePicture: json["profile_picture"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "active": active,
    "is_admin": isAdmin,
    "is_merchant": isMerchant,
    "followers": List<dynamic>.from(followers.map((x) => x.toJson())),
    "followings": List<dynamic>.from(followings.map((x) => x.toJson())),
    "_id": id,
    "email": email,
    "name": name,
    "bio": bio,
    "phone": phone,
    "profile_picture": profilePicture,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "__v": v,
  };
}

class Follow {
  Follow({
    this.id,
    this.email,
    this.name,
    this.profilePicture,
  });

  String id;
  String email;
  String name;
  String profilePicture;

  factory Follow.fromJson(Map<String, dynamic> json) => Follow(
    id: json["_id"],
    email: json["email"] == null ? null : json["email"],
    name: json["name"],
    profilePicture: json["profile_picture"] == null ? null : json["profile_picture"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "email": email == null ? null : email,
    "name": name,
    "profile_picture": profilePicture == null ? null : profilePicture,
  };
}
