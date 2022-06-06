import 'dart:io';
import 'dart:math';

import 'package:jp_weather_information/src/application/weather_service.dart';
import 'package:jp_weather_information/src/domain/model/current_weather.dart';

import '../../application/geo_service.dart';
import '../../domain/model/app_flags.dart';
import '../../domain/model/town.dart';

class CurrentWeatherController {
  final GeoService _geoService = GeoService();
  final WeatherService _weatherService = WeatherService();
  final Random _random = Random();
  final AppFlags _flags;

  CurrentWeatherController(AppFlags flags) : this._flags = flags;

  void execute() async {
    CurrentWeather currentWeather;
    Town selectTown;
    if (_flags.postalCode != null) {
      // 郵便番号で検索
      selectTown = await _searchByPostalCode(_flags.postalCode!);
    } else {
      // 都道府県を選択
      var selectPref = await _selectPrefecture();

      // 市 or 区を選択
      var selectCity = await _selectCity(selectPref);

      // 町域を選択
      selectTown = await _selectTown(selectCity);
    }

    // 選択した町域の情報を表示
    stdout.writeln();
    _printApiTownInfo(selectTown);

    // 天気情報を取得＆表示
    currentWeather = await _weatherService.getCurrentWeather(selectTown.x, selectTown.y);
    _printCurrentWeather(currentWeather);
  }

  Future<Town> _searchByPostalCode(String postalCode) async {
    try {
      var town = await _geoService.getTownByPostalCode(postalCode);
      return town;
    } catch (e) {
      stderr.writeln(e);
      exit(1);
    }
  }

  Future<String> _selectPrefecture() async {
    var prefectures = await _geoService.getPrefectures();
    _printAllValues(prefectures);
    var selectPref = _selectValue(prefectures);
    return selectPref;
  }

  Future<String> _selectCity(String prefecture) async {
    var cities = await _geoService.getCities(prefecture);
    _printAllValues(cities);

    String selectCity = _selectValue(cities);
    return selectCity;
  }

  Future<Town> _selectTown(String city) async {
    var towns = await _geoService.getTowns(city);
    _printAllValues(towns.map((e) => e.town).toList());

    Town selectTown = _selectValue(towns);
    return selectTown;
  }

  void _printAllValues(List<String> values) {
    if (!_flags.isRandomSelection) {
      for (var i = 0; i < values.length; i++) {
        stdout.writeln("[${i + 1}] ${values[i]}");
      }
    }
  }

  T _selectValue<T>(List<T> options) {
    int? selectedNumber;

    if (_flags.isRandomSelection) {
      selectedNumber = 1 + _random.nextInt(options.length - 1);
    } else {
      do {
        // 標準入力から取得
        stdout.write("select number: ");
        var input = stdin.readLineSync();
        if (input == null || input.isEmpty) {
          _printInputValueEmptyError();
          continue;
        }

        // 文字列→数値へ変換
        var number = int.tryParse(input, radix: 10);
        if (number == null) {
          _printInvalidInputError();
          continue;
        }

        // 入力した数値が範囲外のものかどうかをチェック
        if (number - 1 < 0 || number - 1 >= options.length) {
          _printInputValueOutOfRangeError();
          continue;
        }
        selectedNumber = number;
      } while (selectedNumber == null);
    }

    return options[selectedNumber - 1];
  }

  void _printInputValueEmptyError() {
    stdout.writeln("input value is empty");
  }

  void _printInvalidInputError() {
    stdout.writeln("invalid input value");
  }

  void _printInputValueOutOfRangeError() {
    stdout.writeln("input value is out of range.");
  }

  void _printApiTownInfo(Town town) {
    stdout.writeln("${town.prefecture} ${town.city} ${town.town}");
    stdout.writeln("[${town.x}, ${town.y}]");
  }

  void _printCurrentWeather(CurrentWeather weather) {
    stdout.writeln("datetime: ${weather.datetime.toString()}");
    stdout.writeln("weather: ${weather.weather}");
    stdout.writeln("temp: ${weather.temp} ℃");
    stdout.writeln("humidity: ${weather.humidity} %");
    stdout.writeln("pressure: ${weather.presure} hPa");
    stdout.writeln("wind speed: ${weather.windSpeed} m/s");
  }
}
