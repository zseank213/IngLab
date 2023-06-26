// To parse this JSON data, do
//
//     final contactModel = contactModelFromJson(jsonString);

import 'dart:convert';

ContactModel contactModelFromJson(String str) => ContactModel.fromJson(json.decode(str));

String contactModelToJson(ContactModel data) => json.encode(data.toJson());

class ContactModel {
  bool? success;
  Status? status;
  List<DataContact>? data;

  ContactModel({
    this.success,
    this.status,
    this.data,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        success: json["success"],
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        data: json["data"] == null ? [] : List<DataContact>.from(json["data"]!.map((x) => DataContact.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "status": status?.toJson(),
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class DataContact {
  String? id;
  String? name;
  String? email;

  DataContact({
    this.id,
    this.name,
    this.email,
  });

  factory DataContact.fromJson(Map<String, dynamic> json) => DataContact(
        id: json["id"],
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}

class Status {
  String? code;
  String? message;

  Status({
    this.code,
    this.message,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
