import 'package:atmosphere_app/Models/WeatherData.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart'; // Make sure you import Dio

class HomeController with ChangeNotifier {
  String? city;
  WeatherData? currentWeatherData;

  HomeController({this.city});

  // Initialize data fetching
  void init() {
    getCurrentWeatherData();
  }

  // Fetch current weather data for the specified city
  void getCurrentWeatherData() async {
    if (city != null) {
      final String apiKey = '1daaba66db384a8e6db1b84b687a64bc'; // Your API key
      final String url =
          "https://api.openweathermap.org/data/2.5/weather?q=$city&lang=ar&appid=$apiKey";

      try {
        // Make the API request
        final response = await Dio().get(url);
        // Parse the response
        currentWeatherData = WeatherData.fromJson(response.data);
        // Notify listeners of the new data
        notifyListeners();
      } catch (error) {
        print("Error fetching weather data: $error");
        // Handle error (you can also notify listeners about the error)
      }
    }
  }
}
