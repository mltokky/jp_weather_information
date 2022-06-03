enum GeoAreaMethod { prefectures, cities, towns }

extension GeoAreaMethodExtension on GeoAreaMethod {
  String get name {
    switch (this) {
      case GeoAreaMethod.prefectures:
        return 'getPrefectures';
      case GeoAreaMethod.cities:
        return 'getCities';
      default:
        return 'getTowns';
    }
  }
}
