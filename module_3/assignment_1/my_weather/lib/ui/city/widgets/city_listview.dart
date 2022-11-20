import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_weather/ui/weather/weather_screen.dart';

class CityListView extends StatefulWidget {
  const CityListView({super.key});

  @override
  State<CityListView> createState() => _CityListViewState();
}

class _CityListViewState extends State<CityListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: ((context, index) {
        return SizedBox(
          width: double.infinity,
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContinentSection(),
                    const Divider(color: Colors.black),
                    _buildCitiesChip()
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildContinentSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Continent',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        CircleAvatar(
          radius: 21,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/34098/south-africa-hluhluwe-giraffes-pattern.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCitiesChip() {
    return Wrap(
      children: List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: ActionChip(
            backgroundColor: Colors.white,
            // label: Text(cities[index].name),
            label: Text('City $index'),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => WeatherScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
