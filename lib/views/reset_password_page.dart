import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_rounded_button.dart';
import '../widgets/custom_text_field.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({ Key? key }) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(onPressed: ()=>Get.back(), icon:  Icon(Icons.arrow_back_ios)),
        title:  Text("Reset Password", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: Column(
          children:  [
            Text("Enter your email and we'll send you a link to reset your password", style: TextStyle(color: Colors.white)),
            SizedBox(height: 20.0),
            CustomTextField(hintText: 'Email'),
            SizedBox(height: 60.0),
            CRButton(text: "Reset Password", color: Color(0xffdb1f48), function: null),
          ],
        ),
      ),
    );
  }
}