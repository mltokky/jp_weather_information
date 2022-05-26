class ApiTownInfo {
  List<ApiTownInfoResponse> response;
  ApiTownInfo(this.response);
}

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
}
