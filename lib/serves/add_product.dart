import '../Model/product_model.dart';
import 'package:store/helper/apire.dart';

class AddProud {
  Future<ProductModel> addproduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> myproduct = await api().Post(
      uri: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'descirption': description,
        'image': image,
        'category': category
      },
    );
    return ProductModel.fromjson(myproduct);
  }
}
