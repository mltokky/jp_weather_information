import 'package:get_it/get_it.dart';

import '../domain/model/town.dart';
import '../domain/service/geo_repository.dart';

class GeoService {
  final GeoRepository _geoRepository = GetIt.I.get();

  Future<List<String>> getPrefectures() {
    return _geoRepository.getPrefectures().then((value) => value.response.prefecture);
  }

  Future<List<String>> getCities(String prefecture) {
    return _geoRepository.getCities(prefecture);
  }

  Future<List<Town>> getTowns(String city) {
    return _geoRepository.getTowns(city).then((value) => value.response.map((e) => Town(e.prefecture, e.city, e.town, e.x, e.y)).toList());
  }
}