import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  Custombuttom({this.ontap, required this.text});
  VoidCallback? ontap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        width: double.infinity,
        height: 60,
        child: Center(
            child: Text(
          text,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
