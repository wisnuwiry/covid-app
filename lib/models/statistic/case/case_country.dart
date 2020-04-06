import 'dart:convert';

List<CaseCountry> caseListCountryFromJson(String str) => List<CaseCountry>.from(
    json.decode(str).map((x) => CaseCountry.fromJson(x)));

String caseListCountryToJson(List<CaseCountry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

CaseCountry caseCountryFromJson(String str) =>
    CaseCountry.fromJson(json.decode(str));

String caseCountryToJson(CaseCountry data) => json.encode(data.toJson());

class CaseCountry {
  String country;
  CountryInfo countryInfo;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int active;
  int critical;
  int casesPerOneMillion;
  double deathsPerOneMillion;
  int updated;

  CaseCountry({
    this.country,
    this.countryInfo,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.updated,
  });

  factory CaseCountry.fromJson(Map<String, dynamic> json) => CaseCountry(
        country: json["country"],
        countryInfo: CountryInfo.fromJson(json["countryInfo"]),
        cases: json["cases"],
        todayCases: json["todayCases"],
        deaths: json["deaths"],
        todayDeaths: json["todayDeaths"],
        recovered: json["recovered"],
        active: json["active"],
        critical: json["critical"],
        casesPerOneMillion: json["casesPerOneMillion"],
        deathsPerOneMillion: json["deathsPerOneMillion"].toDouble(),
        updated: json["updated"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "countryInfo": countryInfo.toJson(),
        "cases": cases,
        "todayCases": todayCases,
        "deaths": deaths,
        "todayDeaths": todayDeaths,
        "recovered": recovered,
        "active": active,
        "critical": critical,
        "casesPerOneMillion": casesPerOneMillion,
        "deathsPerOneMillion": deathsPerOneMillion,
        "updated": updated,
      };
}

class CountryInfo {
  int id;
  String iso2;
  int lat;
  int long;
  String flag;

  CountryInfo({
    this.id,
    this.iso2,
    this.lat,
    this.long,
    this.flag,
  });

  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
        id: json["_id"],
        iso2: json["iso2"],
        lat: json["lat"],
        long: json["long"],
        flag: json["flag"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "iso2": iso2,
        "lat": lat,
        "long": long,
        "flag": flag,
      };
}
