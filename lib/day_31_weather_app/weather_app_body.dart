import 'package:flutter/material.dart';
import 'package:flutter_training/day_31_weather_app/weather.dart';
import 'package:flutter_training/day_31_weather_app/weather_services.dart';

class WeatherAppBody extends StatefulWidget {
  const WeatherAppBody({Key? key}) : super(key: key);

  @override
  _WeatherAppBodyState createState() => _WeatherAppBodyState();
}

class _WeatherAppBodyState extends State<WeatherAppBody> {
  late Future<MyWeather> myWeatherFuture;

  @override
  void initState() {
    super.initState();
    syncWeather();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    return Container(
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder<MyWeather>(
            future: myWeatherFuture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(
                      'Location : ${snapshot.data!.cityName}',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'Temperature : ${snapshot.data!.tempC} \u2103',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                );
              }

              return CircularProgressIndicator();
            },
          ),
          MaterialButton(
            color: Colors.blueAccent,
            child: Text('Sync temp'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  syncWeather() {
    myWeatherFuture = WeatherService.syncWeatherOverHttp();
  }
}

class _WeatherPalate extends StatefulWidget {
  const _WeatherPalate({Key? key}) : super(key: key);

  @override
  __WeatherPalateState createState() => __WeatherPalateState();
}

class __WeatherPalateState extends State<_WeatherPalate> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
