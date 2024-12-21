import 'package:flutter/material.dart';

class Customtextfiled extends StatelessWidget {
  Customtextfiled(
      {this.hintText,
      this.inputType,
      this.onChanged,
      this.obscureText = false});
  Function(String)? onChanged;
  String? hintText;
  TextInputType? inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: TextInputType.number,
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(), borderRadius: BorderRadius.circular(8)),
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
