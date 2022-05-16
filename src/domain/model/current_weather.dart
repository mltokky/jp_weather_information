import './coord.dart';
import './weather_main.dart';
import './weather_overview.dart';
import './weather_system.dart';
import './wind.dart';

class CurrentWeather {
  WeatherCoord coord;
  WeatherOverview weather;
  String base;
  WeatherMain main;
  int visibility;
  Wind wind;
  int dt;
  WeatherSystem sys;
  int timezone;
  int id;
  String name;
  int cod;
}
