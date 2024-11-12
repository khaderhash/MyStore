import 'package:flutter/material.dart';
import 'package:store/Widgets/CustomButton.dart';

import '../Widgets/TextFormCustom.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});
  static String id = 'update product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("update pro",
            style: TextStyle(
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          textformfieldclass(
            hinttext: 'Product Name',
          ),
          SizedBox(
            height: 10,
          ),
          textformfieldclass(
            hinttext: 'description',
          ),
          SizedBox(
            height: 10,
          ),
          textformfieldclass(
            hinttext: 'Price',
          ),
          SizedBox(
            height: 10,
          ),
          textformfieldclass(
            hinttext: 'image',
          ),
          SizedBox(height: 40,),
          conclickclass(Texts: 'Update'),
        ],
      ),
    );
  }
}
