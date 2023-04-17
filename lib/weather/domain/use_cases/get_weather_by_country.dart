import 'package:weather/weather/domain/repositories/base_weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCountryName {

  final BaseWeatherRepository repository;
  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String countryName) async{
    return await repository.getWeatherByCityName(countryName);
  }
}