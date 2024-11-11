import 'dart:convert';
import 'package:flutter/cupertino.dart';
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

  Future<dynamic> Post(
      {required String uri,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response responss = await http.post(Uri.parse(uri),
        body: body, headers: headers //https://fakestoreapi.com/products
        );
    Map<String, dynamic> data = jsonDecode(responss.body);
    return data;
  }
}
