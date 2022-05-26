// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_city_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCityInfo _$ApiCityInfoFromJson(Map<String, dynamic> json) => ApiCityInfo(
      ApiCityInfoResponse.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiCityInfoToJson(ApiCityInfo instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

ApiCityInfoResponse _$ApiCityInfoResponseFromJson(Map<String, dynamic> json) =>
    ApiCityInfoResponse(
      (json['location'] as List<dynamic>)
          .map((e) => ApiCityInfoLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiCityInfoResponseToJson(
        ApiCityInfoResponse instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

ApiCityInfoLocation _$ApiCityInfoLocationFromJson(Map<String, dynamic> json) =>
    ApiCityInfoLocation(
      json['city'] as String,
      json['city_kana'] as String,
    );

Map<String, dynamic> _$ApiCityInfoLocationToJson(
        ApiCityInfoLocation instance) =>
    <String, dynamic>{
      'city': instance.city,
      'city_kana': instance.cityKana,
    };
