import '../model/town_info.dart';

abstract class GeoRepository {
  Future<List<String>> getPrefectures();
  Future<List<String>> getCities(String prefecture);
  Future<TownInfo> getTowns(String city);
}
