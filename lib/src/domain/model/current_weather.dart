import 'package:jp_weather_information/src/domain/model/api/api_weather_one_call.dart';

class CurrentWeather {
  String weather;
  double temp;
  int humidity;
  int presure;
  double windSpeed;

  CurrentWeather(this.weather, this.temp, this.humidity, this.presure, this.windSpeed);
}
