import 'package:chat_app_tutorial/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
  
}

class _SignUpState extends State<SignUp>{
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: userNameTextEditingController,
                  style: simpleTextStyle(),
                  decoration: InputDecoration(
                    hintText: "username",
                  ),
                ),
                TextField(
                  controller: emailTextEditingController,
                  style: simpleTextStyle(),
                  decoration: InputDecoration(
                    hintText: "email",
                  ),
                ),
                TextField(
                  controller: passwordTextEditingController,
                  style: simpleTextStyle(),
                  decoration: InputDecoration(
                    hintText: "password",
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text("Forgeot Password?"),
                ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff007ef4),
                          const Color(0xff2a75bc),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Sign Up", style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),),
                ),
                SizedBox(height: 16,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Sign Up With Google", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17
                  ),),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account? ", style: mediumTextStyle(),),
                    Text("Sign in now", style: TextStyle(
                        fontSize: 17,
                        decoration: TextDecoration.underline
                    ),)
                  ],
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}