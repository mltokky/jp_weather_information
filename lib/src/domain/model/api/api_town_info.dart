import 'package:json_annotation/json_annotation.dart';

part 'api_town_info.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiTownInfo {
  ApiTownInfoResponse response;

  ApiTownInfo(this.response);

  factory ApiTownInfo.fromJson(Map<String, dynamic> json) => _$ApiTownInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ApiTownInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ApiTownInfoResponse {
  List<ApiTownInfoLocation> location;

  ApiTownInfoResponse(this.location);

  factory ApiTownInfoResponse.fromJson(Map<String, dynamic> json) => _$ApiTownInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiTownInfoResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ApiTownInfoLocation {
  String prefecture;
  String city;
  String cityKana;
  String town;
  String townKana;
  String x;
  String y;
  String postal;

  ApiTownInfoLocation(this.prefecture, this.city, this.cityKana, this.town, this.townKana, this.x, this.y, this.postal);

  factory ApiTownInfoLocation.fromJson(Map<String, dynamic> json) => _$ApiTownInfoLocationFromJson(json);

  Map<String, dynamic> toJson() => _$ApiTownInfoLocationToJson(this);
}
