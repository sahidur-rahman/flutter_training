class MyWeather {
  MyWeather({
    required this.cityName,
    required this.tempF,
    required this.tempC,
  });

  final String cityName;
  final double tempF;
  final double tempC;

  factory MyWeather.fromJson(Map<String, dynamic> json) {
    return MyWeather(
      cityName: json['name'],
      tempF: json['main']['temp'],
      tempC: _convertToCelcius(json['main']['temp']),
    );
  }

  static double _convertToCelcius(double kelvin) {
    return double.parse((kelvin - 273.15).toStringAsFixed(2));
  }
}
