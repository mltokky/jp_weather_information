import 'package:get_it/get_it.dart';
import 'package:jp_weather_information/src/domain/model/current_weather.dart';
import 'package:jp_weather_information/src/domain/service/weather_reppository.dart';

class WeatherService {
  final WeatherRepository _weather_repository = GetIt.I.get();

  Future<CurrentWeather> getCurrentWeather(double lon, double lat) => _weather_repository.weatherOneCall(lon, lat, excludes: ["minutely", "hourly", "daily", "alert"]).then(
      (value) => CurrentWeather(value.current!.weather[0].description, value.current!.temp, value.current!.humidity, value.current!.pressure, value.current!.windSpeed));
}
