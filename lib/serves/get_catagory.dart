import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Model/product_model.dart';

class GetAllCatagory {
  Future<List> GetGatagory() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));
    List<dynamic> data = jsonDecode(response.body);
    return data;
  }
}
