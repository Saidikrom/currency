import 'dart:convert';

List<JsonModel> jsonModelFromJson(String str) =>
    List<JsonModel>.from(json.decode(str).map((x) => JsonModel.fromJson(x)));

class JsonModel {
  JsonModel({
    this.title,
    this.code,
    this.cbPrice,
    this.nbuBuyPrice,
    this.nbuCellPrice,
    this.date,
  });

  String? title;
  String? code;
  String? cbPrice;
  String? nbuBuyPrice;
  String? nbuCellPrice;
  String? date;

  factory JsonModel.fromJson(Map<String, dynamic> json) => JsonModel(
        title: json["title"],
        code: json["code"],
        cbPrice: json["cb_price"],
        nbuBuyPrice: json["nbu_buy_price"],
        nbuCellPrice: json["nbu_cell_price"],
        date: json["date"],
      );
}
