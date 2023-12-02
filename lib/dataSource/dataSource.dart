import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/task.dart';


class DataSource {

  Future<List<Task>> getTaskList() async {
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    print("응답: $response.body");
    return jsonDecode(response.body)
        .map<Task>((json) => Task.fromJson(json))
        .toList();
  }
}