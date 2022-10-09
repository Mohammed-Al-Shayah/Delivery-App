import 'package:flutter/material.dart';

class AuthText extends StatelessWidget {
  late String text;
  late FontWeight fontWeight;
  late Color color ;
  late double fontSize;

  AuthText({required this.text,required this.fontWeight,required this.color,required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color:color ,
        fontSize: fontSize,
        fontWeight:fontWeight ,
      ),
    );
  }
}