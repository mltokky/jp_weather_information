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

  CurrentWeather(this.coord, this.weather, this.base, this.main, this.visibility, this.wind, this.dt, this.sys, this.timezone, this.id, this.name, this.cod);
}

class WeatherCoord {
  double lon;
  double lat;

  WeatherCoord(this.lon, this.lat);
}

class WeatherOverview {
  int id;
  String main;
  String description;
  String icon;

  WeatherOverview(this.id, this.main, this.description, this.icon);
}

class WeatherWind {
  double speed;
  int deg;

  WeatherWind(this.speed, this.deg);
}

class WeatherMain {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int pressure;
  int humidity;

  WeatherMain(this.temp, this.feels_like, this.temp_min, this.temp_max, this.pressure, this.humidity);
}

class WeatherSystem {
  int type;
  int id;
  double message;
  String country;
  int sunrise;
  int sunset;

  WeatherSystem(this.type, this.id, this.message, this.country, this.sunrise, this.sunset);
}
