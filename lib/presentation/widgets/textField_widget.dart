import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
  late String text ;
  late TextInputType textInputType;
  late bool obscureText;


  TextFieldWidget({required this.text,required this.textInputType,required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText:obscureText ,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF2F2F2),
        hintText: text,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: Color(0xffF2F2F2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color(0xffF2F2F2)),
        ),
      ),
      showCursor: false,
      style: TextStyle(
          height: 1, color: Color(0xffB6B7B7), fontSize: 14),
    );
  }
}
