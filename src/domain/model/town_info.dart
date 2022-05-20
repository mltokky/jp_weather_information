class TownInfo {
  List<TownInfoResponse> response;
  TownInfo(this.response);
}

class TownInfoResponse {
  String prefecture;
  String city;
  String cityKana;
  String town;
  String townKana;
  double x;
  double y;
  String postal;

  TownInfoResponse(this.prefecture, this.city, this.cityKana, this.town, this.townKana, this.x, this.y, this.postal);
}
