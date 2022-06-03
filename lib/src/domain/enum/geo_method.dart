enum GeoAreaMethod { prefectures, cities, towns, searchByPostal }

extension GeoAreaMethodExtension on GeoAreaMethod {
  String get name {
    switch (this) {
      case GeoAreaMethod.prefectures:
        return 'getPrefectures';
      case GeoAreaMethod.cities:
        return 'getCities';
      case GeoAreaMethod.towns:
        return 'getTowns';
      case GeoAreaMethod.searchByPostal:
        return 'searchByPostal';
    }
  }
}
