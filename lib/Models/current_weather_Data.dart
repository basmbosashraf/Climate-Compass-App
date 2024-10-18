import 'dart:convert'; // Required for jsonEncode
import 'package:atmosphere_app/Models/clouds.dart';
import 'package:atmosphere_app/Models/main_mainweather.dart';
import 'package:atmosphere_app/Models/weather.dart';
import 'coord.dart';

class CurrentWeatherData {
  Coord coord;
  List<Weather> weather;
  String base;
  MainWeather mainWeather;
  int visibility;
  Clouds clouds;
  int dt;
  String name;
  int cod;

  CurrentWeatherData({
    required this.coord,
    required this.weather,
    required this.base,
    required this.mainWeather,
    required this.visibility,
    required this.clouds,
    required this.dt,
    required this.name,
    required this.cod,
  });

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherData(
      coord: Coord.fromJson(json["coord"]),
      weather: (json["weather"] as List)
          .map((i) => Weather.fromJson(i))
          .toList(),
      base: json["base"],
      mainWeather: MainWeather.fromJson(json["main"]),
      visibility: json["visibility"],
      clouds: Clouds.fromJson(json["clouds"]),
      dt: json["dt"],
      name: json["name"],
      cod: json["cod"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "coord": coord.toJson(),
      "weather": weather.map((w) => w.toJson()).toList(),
      "base": base,
      "main": mainWeather.toJson(),
      "visibility": visibility,
      "clouds": clouds.toJson(),
      "dt": dt,
      "name": name,
      "cod": cod,
    };
  }
}
