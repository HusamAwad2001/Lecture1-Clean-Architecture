import 'package:weather/weather/data/data_sources/remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repositories/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async{
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}