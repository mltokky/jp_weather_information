class CurrentWeather {
  WeatherCoord coord;
  WeatherOverview weather;
  String base;
  WeatherMain main;
  int visibility;
  WeatherWind wind;
  int dt;
  WeatherSystem sys;
  int timezone;
  int id;
  String name;
  int cod;
}

class WeatherCoord {
  double lon;
  double lat;
}

class WeatherOverview {
  int id;
  String main;
  String description;
  String icon;
}

class WeatherWind {
  double speed;
  int deg;
}

class WeatherMain {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int pressure;
  int humidity;
}

class WeatherSystem {
  int type;
  int id;
  double message;
  String country;
  int sunrise;
  int sunset;
}
