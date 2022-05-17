import '../domain/service/geo_repository.dart';

class GeoService {
  GeoRepository _geoRepository;

  GeoService(GeoRepository geoRepository) {
    _geoRepository = geoRepository;
  }

  Future<List<String>> getPrefectures() {
    return _geoRepository.getPrefectures();
  }

  Future<List<String>> getCities(String prefecture) {
    return _geoRepository.getCities(prefecture);
  }
}
