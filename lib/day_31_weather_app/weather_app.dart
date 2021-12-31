import 'package:flutter/material.dart';
import 'package:flutter_training/day_31_weather_app/weather_app_home.dart';

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherAppHome(),
    );
  }
}
