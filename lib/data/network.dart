import 'dart:convert';

import 'package:http/http.dart' as http;

class Network {
  final String _url;

  Network(this._url);

  Future<dynamic> getJsonData() async {
    http.Response response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      String jsonData = response.body;
      return jsonDecode(jsonData);
    }
  }
}