import 'package:flutter/material.dart';

class textformfieldclass extends StatelessWidget {
  textformfieldclass(
      {super.key,
      this.obscureTe = false,
      required this.hinttext,
      this.onchange});
  String hinttext;
  bool? obscureTe;
  Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureTe!,
        validator: (value) {
          if (value!.isEmpty) {
            return 'field';
          }
        },
        onChanged: onchange,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(fontSize: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(),
              borderRadius: BorderRadius.circular(8),
            )));
  }
}
