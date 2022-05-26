// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_prefecture_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPrefectureInfo _$ApiPrefectureInfoFromJson(Map<String, dynamic> json) => ApiPrefectureInfo(
      ApiPrefectureInfoResponse.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiPrefectureInfoToJson(ApiPrefectureInfo instance) => <String, dynamic>{
      'response': instance.response,
    };

ApiPrefectureInfoResponse _$ApiPrefectureInfoResponseFromJson(Map<String, dynamic> json) => ApiPrefectureInfoResponse(
      (json['prefecture'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiPrefectureInfoResponseToJson(ApiPrefectureInfoResponse instance) => <String, dynamic>{
      'prefecture': instance.prefecture,
    };
