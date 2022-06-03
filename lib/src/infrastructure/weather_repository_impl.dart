import 'dart:convert';

import 'package:jp_weather_information/src/domain/model/api/api_weather_one_call.dart';

import '../domain/service/weather_reppository.dart';
import 'package:http/http.dart' as http;

class WeatherRepositoryImpl implements WeatherRepository {
  static const _baseDomain = "api.openweathermap.org";

  final String _appKey;

  WeatherRepositoryImpl(this._appKey);

  @override
  Future<ApiWeatherOneCall> weatherOneCall(double lon, double lat, {List<String>? excludes}) async {
    var response =
        await http.get(Uri.https(_baseDomain, "/data/2.5/onecall", {"lat": "$lat", "lon": "$lon", "exclude": "${excludes?.join(",") ?? ""}", "units": "metric", "lang": "ja", "appid": _appKey}));
    if (response.statusCode != 200) {
      throw Exception("response error -- ${response.statusCode}: ${response.body}");
    }

    return ApiWeatherOneCall.fromJson(jsonDecode(response.body));
  }
}
