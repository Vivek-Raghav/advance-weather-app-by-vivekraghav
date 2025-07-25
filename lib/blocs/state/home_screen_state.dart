// Project imporadvanceweatherapprt 'package:auracast/home/models/weather_api_response.dart';

// Project imports:
import 'package:auracast/home/models/weather_api_response.dart';

abstract class HomeScreenState {}

class HomeScreenInitial extends HomeScreenState {}

class WeatherLoading extends HomeScreenState {}

class WeatherLoaded extends HomeScreenState {
  WeatherLoaded(
      {required this.weatherApiResponse, this.currentWeatherIndex = 0});
  List<WeatherApiResponse> weatherApiResponse;
  int currentWeatherIndex;
}

class WeatherError extends HomeScreenState {
  WeatherError({required this.message});
  final String message;
}
