import 'dart:convert';

MenuData menuDataFromJson(String str) => MenuData.fromJson(json.decode(str));

String menuDataToJson(MenuData data) => json.encode(data.toJson());

class MenuData {
  List<String> avoid;
  List<String> safer;
  List<String> suggest;

  MenuData({
    required this.avoid,
    required this.safer,
    required this.suggest
  });

  factory MenuData.fromJson(Map<String, dynamic> json) => MenuData(
    avoid: json["avoid"],
    safer: json["safer"],
    suggest: json["suggest"]
  );

  Map<String, dynamic> toJson() => {
    "avoid": avoid,
    "safer": safer,
    "suggest": suggest
  };
}
