import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store/Model/product_model.dart';
import 'package:store/screen/updateproduct.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
  required this.product,
    super.key,
  });
ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);

      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(.2),
                  offset: Offset(4, 6),
                  spreadRadius: 1)
            ]),
            child: Card(
              color: Colors.white,
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.title.substring(0,6),
                          style: TextStyle(color: Colors.grey, fontSize: 16)),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                           r'$''${product.price.toString()}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.red,
                            size: 32,
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
          Positioned(
              right: 32,
              bottom: 85,
              child: Image.network(
product.image,
                height: 100,
                width: 100,
              ))
        ],
      ),
    );
  }
}
