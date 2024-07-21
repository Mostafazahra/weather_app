import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weathercubits/weathercubit.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/services/weather_service.dart';

void main() {
  runApp(BlocProvider(
      create: (context) {
        return WeatherCubits(WeatherService());
      },
      child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Provider.of<WeatherProvider>(context).weatherData == null
          //     ? Colors.blue
          //     : Provider.of<WeatherProvider>(context)
          //         .weatherData!
          //         .getThemeColor(),
          ),
      home: HomePage(),
    );
  }
}
