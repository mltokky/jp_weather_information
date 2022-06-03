import 'package:get_it/get_it.dart';

import '../domain/model/town.dart';
import '../domain/service/geo_repository.dart';

class GeoService {
  final GeoRepository _geoRepository = GetIt.I.get();

  Future<List<String>> getPrefectures() => _geoRepository.getPrefectures().then((value) => value.response.prefecture);

  Future<List<String>> getCities(String prefecture) => _geoRepository.getCities(prefecture).then((value) => value.response.location.map((e) => e.city).toList());

  Future<List<Town>> getTowns(String city) =>
      _geoRepository.getTowns(city).then((value) => value.response.location.map((e) => Town(e.prefecture, e.city, e.town, double.parse(e.x), double.parse(e.y))).toList());
}
