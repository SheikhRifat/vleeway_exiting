import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_rounded_button.dart';
import '../widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(onPressed: ()=>Get.back(), icon:  Icon(Icons.arrow_back_ios)),
        title:  Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children:  [
               CustomTextField(hintText: 'Email'),
               CustomTextField(hintText: 'Username'),
               CustomTextField(hintText: 'Password'),
               SizedBox(height: 5.0),
               Text("Your password must have 8 or more characters", style: TextStyle(color: Colors.white, fontSize: 14)),
               SizedBox(height: 30.0),
               CRButton(text: "Create an account", color:  Color(0xffdb1f48), function: null),
               SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text("Already have an account?", style: TextStyle(color: Colors.white)),
                  SizedBox(width: 5),
                  InkWell(child: Text("Log in", style: TextStyle(color: Color(0xffdb1f48)))),
                ],
              ),
               SizedBox(height: 20.0),
               Text("By signing up, you agree to the", style: TextStyle(color: Colors.white, fontSize: 12)),
               SizedBox(height: 5.0),
               Text("Terms of Services & Privacy Policy", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}