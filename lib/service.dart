import 'dart:convert';

import 'package:learn_fetch_api/models.dart';
import 'package:http/http.dart' as http;

class FetchService {
  String baseUrl = "https://jsonplaceholder.typicode.com/todos";

  Future<ToDoListModel> fetch(
      {int? userId, int? id, String? title, bool? completed}) async {
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(baseUrl),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      ToDoListModel todo = ToDoListModel.fromJson(data['title']);
      return todo;
    } else {
      throw Exception('Registration Failed!');
    }
  }
}
