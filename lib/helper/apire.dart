import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class api {
  Future<dynamic> Get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
    } else {
      throw Exception("exception ${response.statusCode}");
    }
  }
}
