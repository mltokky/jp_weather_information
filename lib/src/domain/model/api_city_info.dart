import 'package:json_annotation/json_annotation.dart';

part 'api_city_info.g.dart';

@JsonSerializable()
class ApiCityInfo {
  ApiCityInfoResponse response;

  ApiCityInfo(this.response);

  factory ApiCityInfo.fromJson(Map<String, dynamic> json) => _$ApiCityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCityInfoToJson(this);
}

@JsonSerializable()
class ApiCityInfoResponse {
  List<ApiCityInfoLocation> location;

  ApiCityInfoResponse(this.location);

  factory ApiCityInfoResponse.fromJson(Map<String, dynamic> json) => _$ApiCityInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCityInfoResponseToJson(this);
}

@JsonSerializable()
class ApiCityInfoLocation {
  String city;
  @JsonKey(name: "city_kana")
  String cityKana;

  ApiCityInfoLocation(this.city, this.cityKana);

  factory ApiCityInfoLocation.fromJson(Map<String, dynamic> json) => _$ApiCityInfoLocationFromJson(json);

  Map<String, dynamic> toJson() => _$ApiCityInfoLocationToJson(this);
}
