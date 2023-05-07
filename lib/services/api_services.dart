import 'package:currency/models/json_model.dart';
import 'package:dio/dio.dart';

class ApiServices{
  static String url = "https://nbu.uz/uz/exchange-rates/json/";
  static Future<List<JsonModel>> getApi() async {
    Response res = await Dio().get(url);
    // debugPrint(res.data.length.toString());
    return (res.data as List).map((e) => JsonModel.fromJson(e)).toList();
  }
}
