import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/Model/product_model.dart';
import 'package:store/Widgets/CustomButton.dart';
import 'package:store/serves/ubdate.dart';
import '../Widgets/TextFormCustom.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({
    super.key,
  });
  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? ProductName, desc, image, price;
  bool incall = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: incall,
      child: Scaffold(
        appBar: AppBar(
          title: Text("update pro",
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              textformfieldclass(
                keyboard: TextInputType.text,
                hinttext: 'Product Name',
                onchange: (p0) {
                  ProductName = p0;
                },
              ),
              SizedBox(
                height: 10,
              ),
              textformfieldclass(
                keyboard: TextInputType.text,
                onchange: (p0) {
                  desc = p0;
                },
                hinttext: 'description',
              ),
              SizedBox(
                height: 10,
              ),
              textformfieldclass(
                keyboard: TextInputType.number,
                onchange: (p0) {
                  price = p0;
                },
                hinttext: 'Price',
              ),
              SizedBox(
                height: 10,
              ),
              textformfieldclass(
                keyboard: TextInputType.text,
                onchange: (p0) {
                  image = p0;
                },
                hinttext: 'image',
              ),
              SizedBox(
                height: 40,
              ),
              conclickclass(
                Texts: 'Update',
                ontap: () async {
                  incall = true;
                  setState(() {});
                  try {
                    await updateeProductt(product);
                    print("success");
                  } on Exception catch (e) {
                    ;
                  }
                  incall = false;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateeProductt(ProductModel product) async {
    await UpdateProductService().addproduct(
        title: ProductName == null ? product.title : ProductName!,
        price: price == null ? product.price.toString() : price!,
        description: desc == null ? product.description : desc!,
        image: image == null ? product.image : image!,
        category: product.category,
        id: product.id.toString());
    incall = false;
  }
}
