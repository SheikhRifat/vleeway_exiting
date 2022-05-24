import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  const CustomTextField({ Key? key, required this.hintText }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xffdb1f48)),
                  ),
                  child:  TextField(
                    onChanged: null,
                    decoration: InputDecoration(
                      hintText: hintText.toString(),
                      hintStyle: const TextStyle(color: Colors.white),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
    );
  }
}