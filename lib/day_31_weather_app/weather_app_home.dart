import 'package:flutter/material.dart';
import 'package:flutter_training/day_31_weather_app/weather_app_body.dart';

class WeatherAppHome extends StatefulWidget {
  const WeatherAppHome({Key? key}) : super(key: key);

  @override
  _WeatherAppHomeState createState() => _WeatherAppHomeState();
}

class _WeatherAppHomeState extends State<WeatherAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Current weather details'),
      ),
      body: WeatherAppBody(),
    );
  }
}
