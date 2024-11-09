import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/helper/apire.dart';
import '../Model/product_model.dart';

class GetAllCatagory {
  Future<List> GetGatagory() async {
    List<dynamic> data =
        await api().Get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
