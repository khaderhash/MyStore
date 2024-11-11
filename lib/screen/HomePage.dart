import 'package:flutter/material.dart';

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
        body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 140,
                width: 200,
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Text",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                r"$$$$",
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
                    'https://www.pexels.com/photo/a-photography-of-a-man-standing-on-a-tree-3680219/',
                    height: 100,
                  ))
            ],
          ),
        ));
  }
}
