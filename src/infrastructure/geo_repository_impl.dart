import '../domain/model/api_prefecture_info.dart';
import '../domain/model/api_town_info.dart';
import '../domain/service/geo_repository.dart';

class GeoRepositoryImpl implements GeoRepository {
  @override
  Future<List<String>> getCities(String prefecture) {
    // TODO: implement getCities
    throw UnimplementedError();
  }

  @override
  Future<ApiPrefectureInfo> getPrefectures() {
    // TODO: implement getPrefectures
    throw UnimplementedError();
  }

  @override
  Future<ApiTownInfo> getTowns(String city) {
    // TODO: implement getTowns
    throw UnimplementedError();
  }
}
