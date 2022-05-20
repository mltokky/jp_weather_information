import 'dart:io';

import 'package:get_it/get_it.dart';

import '../../application/geo_service.dart';
import '../../domain/model/town_info.dart';

class CurrentWeatherController {
  final GeoService _geoService = GeoService();

  void execute(String openWeatherMapAppKey) async {
    // 都道府県を選択
    var selectPref = await _selectPrefecture();

    // 市 or 区を選択
    var selectCity = await _selectCity(selectPref);

    // 町域を選択
    var selectTown = await _selectTown(selectCity);
  }

  Future<String> _selectPrefecture() async {
    var prefectures = await _geoService.getPrefectures();

    String? selectPref;
    do {
      _printAllValues(prefectures);
      stdout.write("select prefecture: ");
      selectPref = _selectValue(prefectures);
      if (selectPref == null) {
        _printInputValueError();
      }
    } while (selectPref == null);

    return selectPref;
  }

  Future<String> _selectCity(String prefecture) async {
    var cities = await _geoService.getCities(prefecture);

    String? selectCity;
    do {
      _printAllValues(cities);
      stdout.write("select city: ");
      selectCity = _selectValue(cities);
      if (selectCity == null) {
        _printInputValueError();
      }
    } while (selectCity == null);

    return selectCity;
  }

  Future<TownInfoResponse> _selectTown(String city) async {
    var towns = await _geoService.getTowns(city);

    TownInfoResponse? selectTown;
    do {
      _printAllValues(towns.map((e) => e.town).toList());
      stdout.write("select town: ");
      selectTown = _selectValue(towns);
      if (selectTown == null) {
        _printInputValueError();
      }
    } while (selectTown == null);

    return selectTown;
  }

  void _printAllValues(List<String> values) {
    for (var i = 0; i < values.length; i++) {
      stdout.writeln("[${i + 1}] $values[i]");
    }
  }

  T? _selectValue<T>(List<T> options) {
    // 標準入力から取得
    var input = stdin.readLineSync();
    if (input == null) {
      return null;
    }

    // 文字列→数値へ変換
    var number = int.tryParse(input, radix: 10);
    if (number == null) {
      return null;
    }

    // 入力した数値が範囲外のものかどうかをチェック
    if (number - 1 < 0 || number - 1 >= options.length) {
      return null;
    }

    return options[number - 1];
  }

  void _printInputValueError() {
    stdout.writeln("input value is wrong");
  }
}
