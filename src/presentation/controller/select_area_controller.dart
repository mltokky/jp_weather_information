import 'dart:io';

import '../../application/geo_service.dart';
import '../../domain/model/selection_area.dart';

class SelectAreaController {
  final GeoService _geoService = GeoService();

  Future<SelectionArea> execute() async {
    // 都道府県を選択
    var prefectures = await _geoService.getPrefectures();
    var i = 1;
    for (var pref in prefectures) {
      stdout.writeln("[$i] $pref");
      i++;
    }

    var isOk = false;
    String selectPref;
    do {
      stdout.write("select prefecture: ");
      var input = int.tryParse(stdin.readLineSync(), radix: 10);
      if (input != null) {
        selectPref = prefectures[input - 1];
        isOk = true;
      } else {
        stderr.writeln("input is not number");
      }
    } while (!isOk);

    // 市 or 区を選択
    var cities = await _geoService.getCities(selectPref);
    i = 1;
    for (var city in cities) {
      stdout.writeln("[$i] $city");
      i++;
    }

    String selectCity;
    isOk = false;
    do {
      stdout.write("select city: ");
      var input = int.tryParse(stdin.readLineSync(), radix: 10);
      if (input != null) {
        selectCity = cities[input - 1];
        isOk = true;
      } else {
        stderr.writeln("input is not number");
      }
    } while (!isOk);

    // TODO: 町域を選択させ、町域名、座標（X, Y）を求める
    String selectTown;
    double townX;
    double townY;

    return SelectionArea(selectPref, selectCity, selectTown, townX, townY);
  }
}
