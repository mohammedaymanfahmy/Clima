import 'package:clima/core/services/network/models/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../models/open_meteo_hourly_response_model.dart';
import '../models/weather_news_model.dart';

abstract class HourlyForecastRepository {
  Future<Either<Failure, OpenMeteoHourlyResponse>> fetchWeatherData(
      double? latitude, double? longitude);
  Future<Either<Failure, WeatherNewsModel>> fetchWeatherNews();
}
