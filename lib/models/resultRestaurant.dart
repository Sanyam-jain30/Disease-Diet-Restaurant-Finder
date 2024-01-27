import 'dart:convert';

import 'package:disease_diet_restaurant_finder/models/resultMenu.dart';

RestaurantData restaurantDataFromJson(String str) => RestaurantData.fromJson(json.decode(str));

String restaurantDataToJson(RestaurantData data) => json.encode(data.toJson());

class RestaurantData {
  Summary summary;
  List<Result> results;
  MenuData menu;

  RestaurantData({
    required this.summary,
    required this.results,
    required this.menu
  });

  factory RestaurantData.fromJson(Map<String, dynamic> json) => RestaurantData(
    summary: Summary.fromJson(json["summary"]),
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    menu: MenuData.fromJson(json["menu"])
  );

  Map<String, dynamic> toJson() => {
    "summary": summary.toJson(),
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
    "menu": menu.toJson()
  };
}

class Result {
  String type;
  String id;
  double score;
  double dist;
  String info;
  Poi poi;
  Address address;
  GeoBias position;
  Viewport viewport;
  List<EntryPoint> entryPoints;

  Result({
    required this.type,
    required this.id,
    required this.score,
    required this.dist,
    required this.info,
    required this.poi,
    required this.address,
    required this.position,
    required this.viewport,
    required this.entryPoints,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    type: json["type"],
    id: json["id"],
    score: json["score"]?.toDouble(),
    dist: json["dist"]?.toDouble(),
    info: json["info"],
    poi: Poi.fromJson(json["poi"]),
    address: Address.fromJson(json["address"]),
    position: GeoBias.fromJson(json["position"]),
    viewport: Viewport.fromJson(json["viewport"]),
    entryPoints: List<EntryPoint>.from(json["entryPoints"].map((x) => EntryPoint.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "id": id,
    "score": score,
    "dist": dist,
    "info": info,
    "poi": poi.toJson(),
    "address": address.toJson(),
    "position": position.toJson(),
    "viewport": viewport.toJson(),
    "entryPoints": List<dynamic>.from(entryPoints.map((x) => x.toJson())),
  };
}

class Address {
  String? streetNumber;
  String? streetName;
  String? municipality;
  String? countrySecondarySubdivision;
  String? countrySubdivision;
  String? countrySubdivisionName;
  String? countrySubdivisionCode;
  String? postalCode;
  String? extendedPostalCode;
  String? countryCode;
  String? country;
  String? countryCodeIso3;
  String? freeformAddress;
  String? localName;

  Address({
    required this.streetNumber,
    required this.streetName,
    required this.municipality,
    required this.countrySecondarySubdivision,
    required this.countrySubdivision,
    required this.countrySubdivisionName,
    required this.countrySubdivisionCode,
    required this.postalCode,
    required this.extendedPostalCode,
    required this.countryCode,
    required this.country,
    required this.countryCodeIso3,
    required this.freeformAddress,
    required this.localName,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    streetNumber: json["streetNumber"],
    streetName: json["streetName"],
    municipality: json["municipality"],
    countrySecondarySubdivision: json["countrySecondarySubdivision"],
    countrySubdivision: json["countrySubdivision"],
    countrySubdivisionName: json["countrySubdivisionName"],
    countrySubdivisionCode: json["countrySubdivisionCode"],
    postalCode: json["postalCode"],
    extendedPostalCode: json["extendedPostalCode"],
    countryCode: json["countryCode"],
    country: json["country"],
    countryCodeIso3: json["countryCodeISO3"],
    freeformAddress: json["freeformAddress"],
    localName: json["localName"],
  );

  Map<String, dynamic> toJson() => {
    "streetNumber": streetNumber,
    "streetName": streetName,
    "municipality": municipality,
    "countrySecondarySubdivision": countrySecondarySubdivision,
    "countrySubdivision": countrySubdivision,
    "countrySubdivisionName": countrySubdivisionName,
    "countrySubdivisionCode": countrySubdivisionCode,
    "postalCode": postalCode,
    "extendedPostalCode": extendedPostalCode,
    "countryCode": countryCode,
    "country": country,
    "countryCodeISO3": countryCodeIso3,
    "freeformAddress": freeformAddress,
    "localName": localName,
  };
}

class EntryPoint {
  String type;
  GeoBias position;

  EntryPoint({
    required this.type,
    required this.position,
  });

  factory EntryPoint.fromJson(Map<String, dynamic> json) => EntryPoint(
    type: json["type"],
    position: GeoBias.fromJson(json["position"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "position": position.toJson(),
  };
}

class GeoBias {
  double lat;
  double lon;

  GeoBias({
    required this.lat,
    required this.lon,
  });

  factory GeoBias.fromJson(Map<String, dynamic> json) => GeoBias(
    lat: json["lat"]?.toDouble(),
    lon: json["lon"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lon": lon,
  };
}

class Poi {
  String name;
  String? phone;
  List<CategorySet> categorySet;
  String? url;
  List<String> categories;
  List<Classification> classifications;

  Poi({
    required this.name,
    required this.phone,
    required this.categorySet,
    this.url,
    required this.categories,
    required this.classifications,
  });

  factory Poi.fromJson(Map<String, dynamic> json) => Poi(
    name: json["name"],
    phone: json["phone"],
    categorySet: List<CategorySet>.from(json["categorySet"].map((x) => CategorySet.fromJson(x))),
    url: json["url"],
    categories: List<String>.from(json["categories"].map((x) => x)),
    classifications: List<Classification>.from(json["classifications"].map((x) => Classification.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "phone": phone,
    "categorySet": List<dynamic>.from(categorySet.map((x) => x.toJson())),
    "url": url,
    "categories": List<dynamic>.from(categories.map((x) => x)),
    "classifications": List<dynamic>.from(classifications.map((x) => x.toJson())),
  };
}

class CategorySet {
  int id;

  CategorySet({
    required this.id,
  });

  factory CategorySet.fromJson(Map<String, dynamic> json) => CategorySet(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class Classification {
  String code;
  List<Name> names;

  Classification({
    required this.code,
    required this.names,
  });

  factory Classification.fromJson(Map<String, dynamic> json) => Classification(
    code: json["code"],
    names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "names": List<dynamic>.from(names.map((x) => x.toJson())),
  };
}

class Name {
  String nameLocale;
  String name;

  Name({
    required this.nameLocale,
    required this.name,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    nameLocale: json["nameLocale"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "nameLocale": nameLocale,
    "name": name,
  };
}

class Viewport {
  GeoBias topLeftPoint;
  GeoBias btmRightPoint;

  Viewport({
    required this.topLeftPoint,
    required this.btmRightPoint,
  });

  factory Viewport.fromJson(Map<String, dynamic> json) => Viewport(
    topLeftPoint: GeoBias.fromJson(json["topLeftPoint"]),
    btmRightPoint: GeoBias.fromJson(json["btmRightPoint"]),
  );

  Map<String, dynamic> toJson() => {
    "topLeftPoint": topLeftPoint.toJson(),
    "btmRightPoint": btmRightPoint.toJson(),
  };
}

class Summary {
  String queryType;
  int queryTime;
  int numResults;
  int offset;
  int totalResults;
  int fuzzyLevel;
  GeoBias geoBias;

  Summary({
    required this.queryType,
    required this.queryTime,
    required this.numResults,
    required this.offset,
    required this.totalResults,
    required this.fuzzyLevel,
    required this.geoBias,
  });

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
    queryType: json["queryType"],
    queryTime: json["queryTime"],
    numResults: json["numResults"],
    offset: json["offset"],
    totalResults: json["totalResults"],
    fuzzyLevel: json["fuzzyLevel"],
    geoBias: GeoBias.fromJson(json["geoBias"]),
  );

  Map<String, dynamic> toJson() => {
    "queryType": queryType,
    "queryTime": queryTime,
    "numResults": numResults,
    "offset": offset,
    "totalResults": totalResults,
    "fuzzyLevel": fuzzyLevel,
    "geoBias": geoBias.toJson(),
  };
}