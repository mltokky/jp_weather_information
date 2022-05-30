// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_weather_one_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiWeatherOneCall _$ApiWeatherOneCallFromJson(Map<String, dynamic> json) =>
    ApiWeatherOneCall(
      (json['lat'] as num).toDouble(),
      (json['lon'] as num).toDouble(),
      json['timezone'] as String,
      json['timezone_offset'] as int,
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
      minutely: (json['minutely'] as List<dynamic>?)
          ?.map((e) => Minutely.fromJson(e as Map<String, dynamic>))
          .toList(),
      hourly: (json['hourly'] as List<dynamic>?)
          ?.map((e) => Current.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>?)
          ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
          .toList(),
      alerts: (json['alerts'] as List<dynamic>?)
          ?.map((e) => Alert.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiWeatherOneCallToJson(ApiWeatherOneCall instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'current': instance.current?.toJson(),
      'minutely': instance.minutely?.map((e) => e.toJson()).toList(),
      'hourly': instance.hourly?.map((e) => e.toJson()).toList(),
      'daily': instance.daily?.map((e) => e.toJson()).toList(),
      'alerts': instance.alerts?.map((e) => e.toJson()).toList(),
    };

Alert _$AlertFromJson(Map<String, dynamic> json) => Alert(
      json['sender_name'] as String,
      json['event'] as String,
      json['start'] as int,
      json['end'] as int,
      json['description'] as String,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AlertToJson(Alert instance) => <String, dynamic>{
      'sender_name': instance.senderName,
      'event': instance.event,
      'start': instance.start,
      'end': instance.end,
      'description': instance.description,
      'tags': instance.tags,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      json['dt'] as int,
      json['sunrise'] as int,
      json['sunset'] as int,
      (json['temp'] as num).toDouble(),
      (json['feels_like'] as num).toDouble(),
      json['pressure'] as int,
      json['humidity'] as int,
      (json['dew_point'] as num).toDouble(),
      (json['uvi'] as num).toDouble(),
      json['clouds'] as int,
      json['visibility'] as int,
      (json['wind_speed'] as num).toDouble(),
      json['wind_deg'] as int,
      (json['wind_gust'] as num).toDouble(),
      (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['pop'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'pop': instance.pop,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      json['id'] as int,
      json['main'] as String,
      json['description'] as String,
      json['icon'] as String,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      json['dt'] as int,
      json['sunrise'] as int,
      json['sunset'] as int,
      json['moonrise'] as int,
      json['moonset'] as int,
      (json['moon_phase'] as num).toDouble(),
      Temp.fromJson(json['temp'] as Map<String, dynamic>),
      FeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
      json['pressure'] as int,
      json['humidity'] as int,
      (json['dew_point'] as num).toDouble(),
      (json['wind_speed'] as num).toDouble(),
      json['wind_deg'] as int,
      (json['wind_gust'] as num).toDouble(),
      (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['clouds'] as int,
      (json['pop'] as num).toDouble(),
      (json['rain'] as num).toDouble(),
      (json['uvi'] as num).toDouble(),
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'temp': instance.temp.toJson(),
      'feels_like': instance.feelsLike.toJson(),
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
      'uvi': instance.uvi,
    };

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) => FeelsLike(
      (json['day'] as num).toDouble(),
      (json['night'] as num).toDouble(),
      (json['eve'] as num).toDouble(),
      (json['morn'] as num).toDouble(),
    );

Map<String, dynamic> _$FeelsLikeToJson(FeelsLike instance) => <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

Temp _$TempFromJson(Map<String, dynamic> json) => Temp(
      (json['day'] as num).toDouble(),
      (json['min'] as num).toDouble(),
      (json['max'] as num).toDouble(),
      (json['night'] as num).toDouble(),
      (json['eve'] as num).toDouble(),
      (json['morn'] as num).toDouble(),
    );

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

Minutely _$MinutelyFromJson(Map<String, dynamic> json) => Minutely(
      json['dt'] as int,
      json['precipitation'] as int,
    );

Map<String, dynamic> _$MinutelyToJson(Minutely instance) => <String, dynamic>{
      'dt': instance.dt,
      'precipitation': instance.precipitation,
    };
