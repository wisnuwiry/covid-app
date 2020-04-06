import 'dart:convert';

import 'package:covid19/models/pagination.dart';

ListFaqModel listFaqModelFromJson(String str) =>
    ListFaqModel.fromJson(json.decode(str));

String listFaqModelToJson(ListFaqModel data) => json.encode(data.toJson());

class ListFaqModel {
  String status;
  List<FaqModel> data;
  Pagination pages;

  ListFaqModel({
    this.status,
    this.data,
    this.pages,
  });

  factory ListFaqModel.fromJson(Map<String, dynamic> json) => ListFaqModel(
        status: json["status"],
        data:
            List<FaqModel>.from(json["data"].map((x) => FaqModel.fromJson(x))),
        pages: Pagination.fromJson(json["pages"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "pages": pages.toJson(),
      };
}

List<FaqModel> allFaqFromJson(String str) =>
    List<FaqModel>.from(json.decode(str).map((x) => FaqModel.fromJson(x)));

class FaqModel {
  int id;
  String question;
  String answer;
  int createAt;

  FaqModel({
    this.id,
    this.question,
    this.answer,
    this.createAt,
  });

  factory FaqModel.fromJson(Map<String, dynamic> json) => FaqModel(
        id: json["id"],
        question: json["question"],
        answer: json["answer"],
        createAt: json["create_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "question": question,
        "answer": answer,
        "create_at": createAt,
      };
}
