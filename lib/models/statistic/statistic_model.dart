import 'dart:convert';

List<Statistic> statisticFromJson(String str) =>
    List<Statistic>.from(json.decode(str).map((x) => Statistic.fromJson(x)));

String statisticToJson(List<Statistic> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Statistic {
  String name;
  String positif;
  String sembuh;
  String meninggal;

  Statistic({
    this.name,
    this.positif,
    this.sembuh,
    this.meninggal,
  });

  factory Statistic.fromJson(Map<String, dynamic> json) => Statistic(
        name: json["name"],
        positif: json["positif"],
        sembuh: json["sembuh"],
        meninggal: json["meninggal"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "positif": positif,
        "sembuh": sembuh,
        "meninggal": meninggal,
      };
}
