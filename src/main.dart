import 'dart:io';

import 'package:dotenv/dotenv.dart';

import 'presentation/current_weather_controller.dart';

const ENV_KEY_OPEN_WEATHER_MAP = "open_weather_map_app_key";

void main(List<String> args) {
  // Appキーの取り出し
  final env = DotEnv(includePlatformEnvironment: true)..load();
  if (!env.isDefined(ENV_KEY_OPEN_WEATHER_MAP)) {
    stderr.writeln("not defined OpenWeatherMap AppKey");
    exit(1);
  }

  final openWeatherMapAppKey = env[ENV_KEY_OPEN_WEATHER_MAP];

  CurrentWeatherController().execute(openWeatherMapAppKey);
}
