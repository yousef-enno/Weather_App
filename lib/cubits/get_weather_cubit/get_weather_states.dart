import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  WeatherLoadedState(WeatherModel weatherModel);

}

class WeatherFailureState extends WeatherState {
  WeatherFailureState(String string);
}
