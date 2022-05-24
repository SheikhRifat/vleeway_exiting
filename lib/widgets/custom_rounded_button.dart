import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CRButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? function;
   CRButton({Key? key, required this.text, required this.color,  required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 15.0),
        child: Container(
          height: 50,
          width: Get.width,
          padding:  EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Center(
            child: Text(text.toString(), style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}