import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  static const apiKey = 'YOUR_API_KEY';
  static const baseUrl = 'http://api.openweathermap.org/data/2.5/weather';

  Future<Map<String, dynamic>> getWeather(String city) async {
    final response = await http.get('$baseUrl?q=$city&appid=$apiKey');

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
