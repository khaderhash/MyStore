import 'package:flutter/material.dart';
import 'package:store/Widgets/CustomButton.dart';

import '../Widgets/TextFormCustom.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({
    super.key,
  });
  static String id = 'update product';
  String? ProductName, desc, image;
  int? price;
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
                price = int.parse(p0);
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
            conclickclass(Texts: 'Update'),
          ],
        ),
      ),
    );
  }
}
