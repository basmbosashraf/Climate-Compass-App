import 'package:atmosphere_app/API.dart';
import 'package:atmosphere_app/Models/current_weather_Data.dart';

class WeatherService {
  String? city;

  WeatherService(this.city);

  final String baseURL = 'https://api.openweathermap.org/data/2.5';
  final String APIKey = '1daaba66db384a8e6db1b84b687a64bc'; // Correct API key usage

  void getCurrentWeather({
    required Function() beforeSend,
    required Function(CurrentWeatherData) onSuccess,
    required Function(dynamic error) onError,
  }) {
    // Using the city parameter dynamically
    final url = "$baseURL/weather?q=$city&appid=$APIKey";

    ApiRepo(url: url, payload: {}).getData(
        beforeSend: () => beforeSend(),
        onSuccess: (data) => onSuccess(CurrentWeatherData.fromJson(data)),
        onError: (error) => onError(error));
  }
}
