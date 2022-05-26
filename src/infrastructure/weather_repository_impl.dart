import '../domain/model/current_weather.dart';
import '../domain/service/weather_reppository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  @override
  Future<CurrentWeather> getCurrent(double lon, double lat) {
    // TODO: implement getCurrent
    throw UnimplementedError();
  }
}
