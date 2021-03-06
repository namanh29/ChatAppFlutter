import 'package:chat_app_tutorial/widgets/widget.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget{
  @override
  _SignInState createState() => _SignInState();

}

class _SignInState extends State<SignIn>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", height: 50,),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        alignment: Alignment.bottomCenter,
        // child: Container(
        //   height: 500,
        //
        child: Expanded(

          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  style: simpleTextStyle(),
                  decoration: InputDecoration(
                    hintText: "email",
                  ),
                ),
                TextField(
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
                  child: Text("Sign In", style: TextStyle(
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
                  child: Text("Sign In With Google", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17
                  ),),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account? ", style: mediumTextStyle(),),
                    Text("Register now", style: TextStyle(
                        fontSize: 17,
                      decoration: TextDecoration.underline
                    ),)
                  ],
                ),
                SizedBox(height: 50,)
              ],
            ),
        ),
        //),
      ),
    );
  }
  
}