import 'dart:convert';

List<AllCaseProvince> allCaseProvinceFromJson(String str) =>
    List<AllCaseProvince>.from(
        json.decode(str).map((x) => AllCaseProvince.fromJson(x)));

String allCaseProvinceToJson(List<AllCaseProvince> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllCaseProvince {
  CaseProvince attributes;

  AllCaseProvince({
    this.attributes,
  });

  factory AllCaseProvince.fromJson(Map<String, dynamic> json) =>
      AllCaseProvince(
        attributes: CaseProvince.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "attributes": attributes.toJson(),
      };
}

class CaseProvince {
  int fid;
  int kodeProvi;
  String provinsi;
  int kasusPosi;
  int kasusSemb;
  int kasusMeni;

  CaseProvince({
    this.fid,
    this.kodeProvi,
    this.provinsi,
    this.kasusPosi,
    this.kasusSemb,
    this.kasusMeni,
  });

  factory CaseProvince.fromJson(Map<String, dynamic> json) => CaseProvince(
        fid: json["FID"],
        kodeProvi: json["Kode_Provi"],
        provinsi: json["Provinsi"],
        kasusPosi: json["Kasus_Posi"],
        kasusSemb: json["Kasus_Semb"],
        kasusMeni: json["Kasus_Meni"],
      );

  Map<String, dynamic> toJson() => {
        "FID": fid,
        "Kode_Provi": kodeProvi,
        "Provinsi": provinsi,
        "Kasus_Posi": kasusPosi,
        "Kasus_Semb": kasusSemb,
        "Kasus_Meni": kasusMeni,
      };
}
