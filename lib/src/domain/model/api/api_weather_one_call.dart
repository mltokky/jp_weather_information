import 'package:json_annotation/json_annotation.dart';

part 'api_weather_one_call.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ApiWeatherOneCall {
  ApiWeatherOneCall(
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset, {
    this.current,
    this.minutely,
    this.hourly,
    this.daily,
    this.alerts,
  });

  double lat;
  double lon;
  String timezone;
  int timezoneOffset;
  Current? current;
  List<Minutely>? minutely;
  List<Current>? hourly;
  List<Daily>? daily;
  List<Alert>? alerts;

  factory ApiWeatherOneCall.fromJson(Map<String, dynamic> json) => _$ApiWeatherOneCallFromJson(json);
  Map<String, dynamic> toJson() => _$ApiWeatherOneCallToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Alert {
  Alert(
    this.senderName,
    this.event,
    this.start,
    this.end,
    this.description,
    this.tags,
  );

  String senderName;
  String event;
  int start;
  int end;
  String description;
  List<String> tags;

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);
  Map<String, dynamic> toJson() => _$AlertToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Current {
  Current(
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.pop,
  );

  int dt;
  int sunrise;
  int sunset;
  double temp;
  double feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double uvi;
  int clouds;
  int visibility;
  double windSpeed;
  int windDeg;
  double windGust;
  List<Weather> weather;
  double pop;

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Weather {
  Weather(
    this.id,
    this.main,
    this.description,
    this.icon,
  );

  int id;
  String main;
  String description;
  String icon;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Daily {
  Daily(
    this.dt,
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.clouds,
    this.pop,
    this.rain,
    this.uvi,
  );

  int dt;
  int sunrise;
  int sunset;
  int moonrise;
  int moonset;
  double moonPhase;
  Temp temp;
  FeelsLike feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double windSpeed;
  int windDeg;
  double windGust;
  List<Weather> weather;
  int clouds;
  double pop;
  double rain;
  double uvi;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
  Map<String, dynamic> toJson() => _$DailyToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class FeelsLike {
  FeelsLike(
    this.day,
    this.night,
    this.eve,
    this.morn,
  );

  double day;
  double night;
  double eve;
  double morn;

  factory FeelsLike.fromJson(Map<String, dynamic> json) => _$FeelsLikeFromJson(json);
  Map<String, dynamic> toJson() => _$FeelsLikeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Temp {
  Temp(
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  );

  double day;
  double min;
  double max;
  double night;
  double eve;
  double morn;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
  Map<String, dynamic> toJson() => _$TempToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Minutely {
  Minutely(
    this.dt,
    this.precipitation,
  );

  int dt;
  int precipitation;

  factory Minutely.fromJson(Map<String, dynamic> json) => _$MinutelyFromJson(json);
  Map<String, dynamic> toJson() => _$MinutelyToJson(this);
}
