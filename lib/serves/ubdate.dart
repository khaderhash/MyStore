import '../Model/product_model.dart';
import 'package:store/helper/apire.dart';

class UpdateProductService {
  Future<ProductModel> addproduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String id,
    required String category,
  }) async {
    print('product id = $id');
    Map<String, dynamic> myproduct = await api().Put(
      uri: 'https://fakestoreapi.com/products/$id',
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
