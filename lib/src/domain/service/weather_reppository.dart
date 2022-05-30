import 'package:jp_weather_information/src/domain/model/api/api_weather_one_call.dart';

abstract class WeatherRepository {
  Future<ApiWeatherOneCall> weatherOneCall(double lon, double lat, {List<String> excludes});
}
