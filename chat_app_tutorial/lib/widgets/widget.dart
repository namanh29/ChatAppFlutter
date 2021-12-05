import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context){
  return AppBar(
    title: Text('adad'),
  );
}

InputDecoration textFieldInputDecoration(String hintText){
  return InputDecoration(
    hintText: "email",
  );
}

TextStyle simpleTextStyle(){
  return TextStyle(
    fontSize: 16
  );
}

TextStyle mediumTextStyle(){
  return TextStyle(
      fontSize: 17
  );
}