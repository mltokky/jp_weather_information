// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_town_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiTownInfo _$ApiTownInfoFromJson(Map<String, dynamic> json) => ApiTownInfo(
      (json['response'] as List<dynamic>).map((e) => ApiTownInfoResponse.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$ApiTownInfoToJson(ApiTownInfo instance) => <String, dynamic>{
      'response': instance.response.map((e) => e.toJson()).toList(),
    };

ApiTownInfoResponse _$ApiTownInfoResponseFromJson(Map<String, dynamic> json) => ApiTownInfoResponse(
      json['prefecture'] as String,
      json['city'] as String,
      json['city_kana'] as String,
      json['town'] as String,
      json['town_kana'] as String,
      (json['x'] as num).toDouble(),
      (json['y'] as num).toDouble(),
      json['postal'] as String,
    );

Map<String, dynamic> _$ApiTownInfoResponseToJson(ApiTownInfoResponse instance) => <String, dynamic>{
      'prefecture': instance.prefecture,
      'city': instance.city,
      'city_kana': instance.cityKana,
      'town': instance.town,
      'town_kana': instance.townKana,
      'x': instance.x,
      'y': instance.y,
      'postal': instance.postal,
    };
