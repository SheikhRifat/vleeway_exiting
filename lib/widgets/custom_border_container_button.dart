import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CBCButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Widget leading;
  final Function()? function;
  const CBCButton({Key? key, required this.text, required this.color, required this.leading, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Container(
          height: 43,
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            
            children: [
              leading,
             text=='Google'?const SizedBox(width: 90):const SizedBox(width: 80),
              Center(
            child: Text(text.toString(), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
            ],
          ),
        ),
      ),
    );
  }
}