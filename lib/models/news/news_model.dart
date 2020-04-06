import 'dart:convert';

import '../pagination.dart';

ListNewsModel listNewsModelFromJson(String str) => ListNewsModel.fromJson(json.decode(str));

String listNewsModelToJson(ListNewsModel data) => json.encode(data.toJson());

class ListNewsModel {
    String status;
    List<NewsModel> data;
    Pagination pagination;

    ListNewsModel({
        this.status,
        this.data,
        this.pagination,
    });

    factory ListNewsModel.fromJson(Map<String, dynamic> json) => ListNewsModel(
        status: json["status"],
        data: List<NewsModel>.from(json["data"].map((x) => NewsModel.fromJson(x))),
        pagination: Pagination.fromJson(json["pages"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "pages": pagination.toJson(),
    };
}

class NewsModel {
    int id;
    String title;
    String description;

    NewsModel({
        this.id,
        this.title,
        this.description,
    });

    factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
    };
}