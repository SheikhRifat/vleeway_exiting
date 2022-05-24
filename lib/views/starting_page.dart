import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_border_container_button.dart';
import 'login_page.dart';
import 'sign_up_page.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({ Key? key }) : super(key: key);

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
               Text("Sign up to see your friend's videos!", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: <Widget>[
              Expanded(
                child:  Container(
                    margin:  EdgeInsets.only(left: 10.0, right: 20.0),
                    child:  Divider(
                      color: Colors.white,
                      height: 36,
                    )),
              ),
               Text("Welcome to vleeway", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
              Expanded(
                child:  Container(
                    margin:  EdgeInsets.only(left: 20.0, right: 10.0),
                    child:  Divider(
                      color: Colors.white,
                      height: 36,
                    )),
              ),
            ]),
             SizedBox(height: 30.0),
            CBCButton(text: "Create new account", color:  Color(0xffdb1f48), leading: Container(), function: ()=>Get.to(()=> SignUpPage()),),
            CBCButton(text: "Login with your email", color:  Color(0xffdb1f48), leading: Container(), function: ()=> Get.to(()=>  LoginPage())),
             SizedBox(height: 20.0),
            CBCButton(text: "Facebook", color:  Color(0xff365288), leading: Image.asset('assets/ic_fb.png'), function: null),
            CBCButton(text: "Google", color:  Color(0xffdb1f48), leading: Image.asset('assets/ic_google.png'), function: null),
            ],
          ),
        ),
      ),
    );
  }
}