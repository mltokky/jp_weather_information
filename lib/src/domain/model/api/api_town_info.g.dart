// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_town_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTownInfo _$ApiTownInfoFromJson(Map<String, dynamic> json) => ApiTownInfo(
      ApiTownInfoResponse.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiTownInfoToJson(ApiTownInfo instance) =>
    <String, dynamic>{
      'response': instance.response.toJson(),
    };

ApiTownInfoResponse _$ApiTownInfoResponseFromJson(Map<String, dynamic> json) =>
    ApiTownInfoResponse(
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => ApiTownInfoLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$ApiTownInfoResponseToJson(
        ApiTownInfoResponse instance) =>
    <String, dynamic>{
      'location': instance.location?.map((e) => e.toJson()).toList(),
      'error': instance.error,
    };

ApiTownInfoLocation _$ApiTownInfoLocationFromJson(Map<String, dynamic> json) =>
    ApiTownInfoLocation(
      json['prefecture'] as String,
      json['city'] as String,
      json['city_kana'] as String,
      json['town'] as String,
      json['town_kana'] as String,
      json['x'] as String,
      json['y'] as String,
      json['postal'] as String,
    );

Map<String, dynamic> _$ApiTownInfoLocationToJson(
        ApiTownInfoLocation instance) =>
    <String, dynamic>{
      'prefecture': instance.prefecture,
      'city': instance.city,
      'city_kana': instance.cityKana,
      'town': instance.town,
      'town_kana': instance.townKana,
      'x': instance.x,
      'y': instance.y,
      'postal': instance.postal,
    };
