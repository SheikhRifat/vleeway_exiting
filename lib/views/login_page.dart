import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vleeway_app/widgets/custom_bottombar.dart';

import '../widgets/custom_rounded_button.dart';
import '../widgets/custom_text_field.dart';
import 'reset_password_page.dart';

class LoginPage extends StatefulWidget {
   LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        leading: IconButton(onPressed: ()=>Get.back(), icon:  Icon(Icons.arrow_back_ios)),
        title:  Text("Log in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
                CustomTextField(hintText: 'Email or username'),
                CustomTextField(hintText: 'Password'),
                SizedBox(height: 30.0),
                CRButton(text: "Log in", color:  Color(0xffdb1f48), function: (){
                  Get.offAll(CustomBottombar());
                }),
                SizedBox(height: 10),
               InkWell(
                 child:  Text("Forgot Password?", style: TextStyle(color: Colors.white)),
                 onTap: ()=>Get.to(()=> ResetPasswordPage()),
               ),
            ],
          ),
        ),
      ),
    );
  }
}