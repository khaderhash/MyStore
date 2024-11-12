import 'package:flutter/material.dart';


class conclickclass extends StatelessWidget {
  conclickclass({super.key, required this.Texts, this.ontap});
  VoidCallback? ontap;
  String Texts;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(22)),
        width: double.infinity,
        height: 60,
        child: Center(
            child: Text(
              Texts,
              style: TextStyle(fontSize: 22,color: Colors.white12),
            )),
      ),
    );
  }
}