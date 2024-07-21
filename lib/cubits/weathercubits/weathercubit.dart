import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weathercubits/weatherstate.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherCubits extends Cubit<WeatherStates> {
  WeatherCubits(this.weatherservice) : super(WeatherInitial());
  WeatherService weatherservice;
  WeatherModel? weathermodel;

  String? cityName;
  void getWeather({required String cityname}) async {
    emit(Weatherloading());
    try {
      weathermodel = await weatherservice.getWeather(cityName: cityname);
      emit(WeatherSuccess());
    } catch (e) {
      emit(WeatherFailure());
    }
  }
}
