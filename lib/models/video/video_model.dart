import 'dart:convert';

import 'package:covid19/models/pagination.dart';

ListVideoModel listVideoModelFromJson(String str) => ListVideoModel.fromJson(json.decode(str));

String listVideoModelToJson(ListVideoModel data) => json.encode(data.toJson());

class ListVideoModel {
    String status;
    List<VideoModel> data;
    Pagination pagination;

    ListVideoModel({
        this.status,
        this.data,
        this.pagination,
    });

    factory ListVideoModel.fromJson(Map<String, dynamic> json) => ListVideoModel(
        status: json["status"],
        data: List<VideoModel>.from(json["data"].map((x) => VideoModel.fromJson(x))),
        pagination: Pagination.fromJson(json["pages"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "pages": pagination.toJson(),
    };
}

class VideoModel {
    int id;
    String title;
    String imageUrl;

    VideoModel({
        this.id,
        this.title,
        this.imageUrl,
    });

    factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
        id: json["id"],
        title: json["title"],
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image_url": imageUrl,
    };
}