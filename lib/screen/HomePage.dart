import 'package:flutter/material.dart';
import 'package:store/Model/product_model.dart';

import '../Widgets/CardCustom.dart';
import '../serves/get_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          title: Text('my Store',
              style: TextStyle(color: Colors.black, fontSize: 20)),
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 24,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_business,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            )
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
          child: FutureBuilder<List<ProductModel>>(
            future: getproduct().GetAllProduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> products = snapshot.data!;
                return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100,
                  ),
                  itemBuilder: (context, index) {
                    return CustomCard(
                      product: products[index],
                    );
                  },
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ));
  }
}
