import 'package:geolocator/geolocator.dart';

class MyLocation {
  late final double _longitude;
  late final double _latitude;

  Future<void> getMyCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      _longitude = position.longitude;
      _latitude = position.latitude;
    } catch (e) {
      print("::: MyLocation.getMyCurrentLocation ::: 인터넷 연결 문제");
      throw Exception(e);
    }
  }

  double getLongitude() {
    return _longitude;
  }
}