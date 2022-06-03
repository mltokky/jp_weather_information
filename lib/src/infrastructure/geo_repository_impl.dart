import 'dart:convert';

import 'package:jp_weather_information/src/domain/enum/geo_method.dart';
import 'package:jp_weather_information/src/domain/model/api/api_city_info.dart';

import '../domain/model/api/api_prefecture_info.dart';
import '../domain/model/api/api_town_info.dart';
import '../domain/service/geo_repository.dart';
import 'package:http/http.dart' as http;

class GeoRepositoryImpl implements GeoRepository {
  static const _baseDomain = "geoapi.heartrails.com";
  static const _apiPath = "/api/json";

  @override
  Future<ApiCityInfo> getCities(String prefecture) => _getResponse(GeoAreaMethod.cities, prefecture: prefecture).then((v) => ApiCityInfo.fromJson(v));

  @override
  Future<ApiPrefectureInfo> getPrefectures() => _getResponse(GeoAreaMethod.prefectures).then((v) => ApiPrefectureInfo.fromJson(v));

  @override
  Future<ApiTownInfo> getTowns(String city) => _getResponse(GeoAreaMethod.towns, city: city).then((v) => ApiTownInfo.fromJson(v));

  Future<Map<String, dynamic>> _getResponse(GeoAreaMethod method, {String? prefecture, String? city}) async {
    Map<String, String> query = {
      "method": method.name,
    };
    if (prefecture != null) {
      query["prefecture"] = prefecture;
    }
    if (city != null) {
      query["city"] = city;
    }

    var response = await http.get(Uri.https(_baseDomain, _apiPath, query));
    if (response.statusCode != 200) {
      throw Exception("response error -- ${response.statusCode}: ${response.body}");
    }

    return jsonDecode(response.body);
  }
}
