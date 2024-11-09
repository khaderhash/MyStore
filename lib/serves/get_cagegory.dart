import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/helper/apire.dart';
import '../Model/product_model.dart';

class getcagegory {
  Future<List<ProductModel>> GetAllProduct({required String category}) async {
    List<dynamic> data = await api()
        .Get(url: 'https://fakestoreapi.com/products/category/$category');
    List<ProductModel> ProductList = [];
    for (int i = 0; i < data.length; i++) {
      ProductList.add(ProductModel.fromjson(data[i]));
    }
    return ProductList;
  }
}
