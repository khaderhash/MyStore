import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Model/product_model.dart';

class getproduct {
  Future<List<ProductModel>> GetAllProduct() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> ProductList = [];
    for (int i = 0; i < data.length; i++) {
      ProductList.add(ProductModel.fromjson(data[i]));
    }
    return ProductList;
  }
}
