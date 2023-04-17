import 'package:weather/weather/domain/entities/weather.dart';

// Contract || Abstract
abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String countryName);
}