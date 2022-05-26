import 'package:json_annotation/json_annotation.dart';

part 'api_town_info.g.dart';

@JsonSerializable(explicitToJson: true)
class ApiTownInfo {
  List<ApiTownInfoResponse> response = [];

  ApiTownInfo(this.response);

  factory ApiTownInfo.fromJson(Map<String, dynamic> json) => _$ApiTownInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ApiTownInfoToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ApiTownInfoResponse {
  String prefecture;
  String city;
  String cityKana;
  String town;
  String townKana;
  double x;
  double y;
  String postal;

  ApiTownInfoResponse(this.prefecture, this.city, this.cityKana, this.town, this.townKana, this.x, this.y, this.postal);

  factory ApiTownInfoResponse.fromJson(Map<String, dynamic> json) => _$ApiTownInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApiTownInfoResponseToJson(this);
}
