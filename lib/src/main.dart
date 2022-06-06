import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:get_it/get_it.dart';

import 'domain/model/app_flags.dart';
import 'domain/service/geo_repository.dart';
import 'domain/service/weather_reppository.dart';
import 'infrastructure/geo_repository_impl.dart';
import 'infrastructure/weather_repository_impl.dart';
import 'presentation/controller/current_weather_controller.dart';

const ENV_KEY_OPEN_WEATHER_MAP = "open_weather_map_app_key";

void main(List<String> args) async {
  // Appキーの取り出し
  final env = DotEnv(includePlatformEnvironment: true)..load();
  final openWeatherMapAppKey = env[ENV_KEY_OPEN_WEATHER_MAP];
  if (openWeatherMapAppKey == null) {
    stderr.writeln("not defined OpenWeatherMap AppKey");
    exit(1);
  }

  _setupDependencies(openWeatherMapAppKey);

  var flags = AppFlags();
  if (!flags.parse(args)) {
    _printUsage();
    exit(1);
  }

  CurrentWeatherController(flags).execute();
}

void _printUsage() {
  // TODO: ここに使い方を出力する処理を追加
}

void _setupDependencies(String openWeatherMapAppKey) {
  final getIt = GetIt.instance;
  getIt.registerSingleton<GeoRepository>(GeoRepositoryImpl());
  getIt.registerSingleton<WeatherRepository>(WeatherRepositoryImpl(openWeatherMapAppKey));
}
