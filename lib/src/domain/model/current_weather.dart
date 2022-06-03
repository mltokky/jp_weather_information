class CurrentWeather {
  DateTime datetime;
  String weather;
  double temp;
  int humidity;
  int presure;
  double windSpeed;

  CurrentWeather(int dt, String weather, double temp, int humidity, int presure, double windSpeed)
      : this.datetime = DateTime.fromMillisecondsSinceEpoch(dt * 1000),
        this.weather = weather,
        this.temp = temp,
        this.humidity = humidity,
        this.presure = presure,
        this.windSpeed = windSpeed;
}
