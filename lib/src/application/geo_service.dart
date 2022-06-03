import 'package:get_it/get_it.dart';

import '../domain/model/town.dart';
import '../domain/service/geo_repository.dart';

class GeoService {
  final GeoRepository _geoRepository = GetIt.I.get();

  Future<List<String>> getPrefectures() => _geoRepository.getPrefectures().then((value) => value.response.prefecture);

  Future<List<String>> getCities(String prefecture) => _geoRepository.getCities(prefecture).then((value) => value.response.location.map((e) => e.city).toList());

  Future<List<Town>> getTowns(String city) async {
    var result = await _geoRepository.getTowns(city);
    if (result.response.error != null) {
      throw Exception("error: ${result.response.error}");
    }

    return result.response.location!.map((e) => Town(e.prefecture, e.city, e.town, double.parse(e.x), double.parse(e.y))).toList();
  }

  Future<Town> getTownByPostalCode(String postalCode) async {
    var response = await _geoRepository.searchByPostalCode(postalCode);
    if (response.response.error != null) {
      throw Exception("error: ${response.response.error}");
    }

    var town = response.response.location![0];
    return Town(town.prefecture, town.city, town.town, double.parse(town.x), double.parse(town.y));
  }
}
