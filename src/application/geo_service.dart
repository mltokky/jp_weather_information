import 'package:get_it/get_it.dart';

import '../domain/model/town_info.dart';
import '../domain/service/geo_repository.dart';

class GeoService {
  final GeoRepository _geoRepository = GetIt.I.get();

  Future<List<String>> getPrefectures() {
    return _geoRepository.getPrefectures();
  }

  Future<List<String>> getCities(String prefecture) {
    return _geoRepository.getCities(prefecture);
  }

  Future<List<TownInfoResponse>> getTowns(String city) {
    return _geoRepository.getTowns(city).then((value) => value.response);
  }
}
