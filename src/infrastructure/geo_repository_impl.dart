import '../domain/model/town_info.dart';
import '../domain/service/geo_repository.dart';

class GeoRepositoryImpl implements GeoRepository {
  @override
  Future<List<String>> getCities(String prefecture) {
    // TODO: implement getCities
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getPrefectures() {
    // TODO: implement getPrefectures
    throw UnimplementedError();
  }

  @override
  Future<TownInfo> getTowns(String city) {
    // TODO: implement getTowns
    throw UnimplementedError();
  }
}
