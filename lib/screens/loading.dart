import 'package:flutter/material.dart';
import 'package:flutter_playground/data/network.dart';
import 'package:flutter_playground/screens/weather_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../data/my_location.dart';


class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    getGeoLocation();
    super.initState();
  }

  /** GeoLocation
   * 좌표 값(longitude, attitude) 가져옵니다.
   */
  Future<void> getGeoLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    print(myLocation.getLongitude());

    Network network = Network(
        "https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1"
    );
    var weatherData = await network.getJsonData();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return WeatherScreen(weatherData: weatherData);
      })
    );
  }

  /** 빌드 Scaffold
   */
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
            )
          ),
          onPressed: () {
          },
          child: const Text("Get My Location", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}