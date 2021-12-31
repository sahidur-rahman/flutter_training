import 'dart:convert';

import 'package:flutter_training/day_31_weather_app/weather.dart';
import 'package:http/http.dart' as http;
import 'package:weather/weather.dart';

class WeatherService {
  static const String _apiKey = '32e5c3a89949ccc36b5fbe4e51dfbdaf';
  static const String _cityName = 'Rangpur';

  static Future<MyWeather> syncWeatherOverHttp() async {
    print('Calling weather\n');

    http.Response response = await http.get(Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?q=$_cityName&appid=$_apiKey'));

    MyWeather data = MyWeather.fromJson(jsonDecode(response.body));
    print(data.cityName);
    print('${data.tempC} \n\n');

    return data;
  }

  static syncWeatherOverAPI() async {
    WeatherFactory wf = WeatherFactory(_apiKey);
    Weather w = await wf.currentWeatherByCityName(_cityName);
    print(w.toString());
  }
}
