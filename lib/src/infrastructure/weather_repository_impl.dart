import 'package:jp_weather_information/src/domain/model/api/api_weather_one_call.dart';

import '../domain/model/current_weather.dart';
import '../domain/service/weather_reppository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<ApiWeatherOneCall> weatherOneCall(double lon, double lat, {List<String>? excludes}) {
    // TODO: implement weatherOneCall
    throw UnimplementedError();
  }
}
