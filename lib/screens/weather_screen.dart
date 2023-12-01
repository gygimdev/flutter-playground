import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {

  final weatherData;
  WeatherScreen({this.weatherData});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late final String name;
  late final double temp;

  @override
  void initState() {
    super.initState();
    getData(widget.weatherData);
  }

  void getData(weatherData) {
    name = weatherData['name'];
    temp = weatherData['main']['temp'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name,
                style: TextStyle(
                  fontSize: 30.0
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              Text("$temp",
                style: TextStyle(
                    fontSize: 30.0
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
