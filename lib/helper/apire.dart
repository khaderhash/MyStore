import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class api {
  Future<dynamic> Get({required String url, @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
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
    if (responss.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(responss.body);
      return data;
    } else {
      throw Exception(
          "exception ${responss.statusCode} , body ${jsonDecode(responss.body)}");
    }
  }

  Future<dynamic> Put(
      {required String uri,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print("url = $uri , body = $body , token = $token ");
    http.Response responss = await http.post(Uri.parse(uri),
        body: body, headers: headers //https://fakestoreapi.com/products
        );
    if (responss.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(responss.body);
      print(data);
      return data;
    } else {
      throw Exception(
          "exception ${responss.statusCode} , body ${jsonDecode(responss.body)}");
    }
  }
}
