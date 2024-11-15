import 'package:flutter/material.dart';
import 'package:store/screen/HomePage.dart';
import 'package:store/screen/updateproduct.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          'homepage': (context) {
            return HomePage();
          },
          UpdateProductPage.id: (context) {
            return UpdateProductPage();
          }
        },
        home: HomePage());
  }
}
