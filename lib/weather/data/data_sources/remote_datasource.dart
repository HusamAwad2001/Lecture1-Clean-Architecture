import 'package:dio/dio.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
        '${AppConstants.baseUrl}/weather?q=$countryName&appid=${AppConstants.appKey}',
      );
      print(response);
      /// jsonDecode(response.data)
      /// Like This
      /// response.body in http package
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
