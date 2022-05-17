abstract class GeoRepository {
  Future<List<String>> getPrefectures();
  Future<List<String>> getCities(String prefecture);
}
