import 'dart:convert';

import '../models.dart';

ListContactModel listContactModelFromJson(String str) =>
    ListContactModel.fromJson(json.decode(str));

String listContactModelToJson(ListContactModel data) =>
    json.encode(data.toJson());

class ListContactModel {
  String status;
  List<ContactModel> data;
  Pagination pagination;

  ListContactModel({
    this.status,
    this.data,
    this.pagination,
  });

  factory ListContactModel.fromJson(Map<String, dynamic> json) =>
      ListContactModel(
        status: json["status"],
        data: List<ContactModel>.from(
            json["data"].map((x) => ContactModel.fromJson(x))),
        pagination: Pagination.fromJson(json["pages"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "pages": pagination.toJson(),
      };
}

class ContactModel {
  int id;
  dynamic number;
  String hospital;

  ContactModel({
    this.id,
    this.number,
    this.hospital,
  });

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        id: json["id"],
        number: json["number"],
        hospital: json["hospital"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "number": number,
        "hospital": hospital,
      };
}
