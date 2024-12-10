

class WeatherModel {
  final String cityName;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final DateTime date;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.date,
      required this.weatherCondition});
  factory WeatherModel.fromjson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        image: json['current']['condition']['icon'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        date: DateTime.parse(json['current']['last_updated']),
        weatherCondition: json['current']['condition']['text']);
  }
}
