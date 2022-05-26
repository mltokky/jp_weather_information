import 'package:json_annotation/json_annotation.dart';

part 'api_prefecture_info.g.dart';

@JsonSerializable()
class ApiPrefectureInfo {
  ApiPrefectureInfoResponse response;

  ApiPrefectureInfo(this.response);

  factory ApiPrefectureInfo.fromJson(Map<String, dynamic> json) => _$ApiPrefectureInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPrefectureInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ApiPrefectureInfoResponse {
  List<String> prefecture;

  ApiPrefectureInfoResponse(this.prefecture);

  factory ApiPrefectureInfoResponse.fromJson(Map<String, dynamic> json) => _$ApiPrefectureInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiPrefectureInfoResponseToJson(this);
}
