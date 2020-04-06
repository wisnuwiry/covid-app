import 'dart:convert';

ContentNewsModel contentNewsModelFromJson(String str) => ContentNewsModel.fromJson(json.decode(str));

String contentNewsModelToJson(ContentNewsModel data) => json.encode(data.toJson());

class ContentNewsModel {
    int id;
    String content;

    ContentNewsModel({
        this.id,
        this.content,
    });

    factory ContentNewsModel.fromJson(Map<String, dynamic> json) => ContentNewsModel(
        id: json["id"],
        content: json["content"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
    };
}
