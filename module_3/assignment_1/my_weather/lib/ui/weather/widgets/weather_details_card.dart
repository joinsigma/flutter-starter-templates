import 'package:flutter/material.dart';
import 'package:my_weather/ui/weather/widgets/current_temperature_info.dart';
import 'package:my_weather/ui/weather/widgets/weather_info_text.dart';

import '../../../data/data.dart';

class WeatherDetailsCard extends StatelessWidget {
  const WeatherDetailsCard({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/clear_sky.jpg'),
          fit: BoxFit.fill,
          opacity: 0.90,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 30.0,
          ),
          child: Card(
            elevation: 2.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 20.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // City name
                  const Text(
                    'City Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24.0,
                    ),
                  ),

                  const Divider(),

                  // Weather avatar, condition & description
                  ListTile(
                    contentPadding: const EdgeInsets.all(0.0),
                    leading: CircleAvatar(
                      radius: 21,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundImage: const NetworkImage(
                          'http://openweathermap.org/img/wn/01d.png',
                        ),
                        backgroundColor: Colors.blue[300],
                      ),
                    ),
                    title: Text('Clouds'),
                    subtitle: Text('few clouds'),
                  ),

                  const Divider(),

                  // Temperature settings
                  const CurrentTemperatureInfo(),
                  const SizedBox(height: 15.0),

                  const WeatherInfoText(
                    label: 'Min: ',
                    textValue: '28.6 \u2103',
                  ),
                  const SizedBox(height: 2.0),

                  const WeatherInfoText(
                    label: 'Max: ',
                    textValue: '31.6 \u2103',
                  ),
                  const SizedBox(height: 2.0),

                  const WeatherInfoText(
                    label: 'Feels Like: ',
                    textValue: '33.6 \u2103',
                  ),
                  const SizedBox(height: 2.0),

                  const WeatherInfoText(
                    label: 'Humidity: ',
                    textValue: '62.0 %',
                  ),
                  const SizedBox(height: 2.0),

                  const WeatherInfoText(
                    label: 'Pressure: ',
                    textValue: '1008 hPa',
                  ),
                  const SizedBox(height: 2.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}