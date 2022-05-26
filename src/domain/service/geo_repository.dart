import '../model/api_prefecture_info.dart';
import '../model/api_town_info.dart';

abstract class GeoRepository {
  Future<ApiPrefectureInfo> getPrefectures();
  Future<List<String>> getCities(String prefecture);
  Future<ApiTownInfo> getTowns(String city);
}
