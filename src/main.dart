import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:get_it/get_it.dart';

import 'domain/service/geo_repository.dart';
import 'domain/service/weather_reppository.dart';
import 'infrastructure/geo_repository_impl.dart';
import 'infrastructure/weather_repository_impl.dart';
import 'presentation/controller/current_weather_controller.dart';
import 'presentation/controller/select_area_controller.dart';

const ENV_KEY_OPEN_WEATHER_MAP = "open_weather_map_app_key";

void main(List<String> args) async {
  _setupDependencies();

  // Appキーの取り出し
  final env = DotEnv(includePlatformEnvironment: true)..load();
  if (!env.isDefined(ENV_KEY_OPEN_WEATHER_MAP)) {
    stderr.writeln("not defined OpenWeatherMap AppKey");
    exit(1);
  }

  final openWeatherMapAppKey = env[ENV_KEY_OPEN_WEATHER_MAP];

  var selectionArea = await SelectAreaController().execute();
  CurrentWeatherController().execute(openWeatherMapAppKey);
}

void _setupDependencies() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<GeoRepository>(GeoRepositoryImpl());
  getIt.registerSingleton<WeatherRepository>(WeatherRepositoryImpl());
}
