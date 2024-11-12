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
                ontap: () {
                  incall = true;
                  setState(() {});
                  try {
                    name(product);
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

  void name(ProductModel product) {
    UpdateProductService().addproduct(
        title: ProductName!,
        price: price!,
        description: desc!,
        image: image!,
        category: product.category);
    incall = false;
  }
}
