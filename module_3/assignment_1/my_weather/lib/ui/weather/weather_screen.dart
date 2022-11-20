import 'package:flutter/material.dart';
import 'package:my_weather/ui/weather/widgets/weather_details_card.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({
    super.key,
  });

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Weather Details'),
          ),
          body: WeatherDetailsCard()),
    );
  }
}
