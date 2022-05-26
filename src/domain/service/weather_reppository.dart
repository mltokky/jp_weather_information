import '../model/current_weather.dart';

abstract class WeatherRepository {
  Future<CurrentWeather> getCurrent(double lon, double lat);
}
