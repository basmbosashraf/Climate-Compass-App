class Coord {
  double lon;
  double lat;

  Coord({
    required this.lat,
    required this.lon,
  });

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lat: double.parse(json["lat"].toString()),
      lon: double.parse(json["lon"].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lon': lon,
    };
  }
}
