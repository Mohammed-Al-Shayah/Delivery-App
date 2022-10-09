import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  late String text;
  late FontWeight fontWeight;
  late Color colorText;
  late double fontSize;

  TextWidget({
    required this.text,
    required this.fontWeight,
    required this.colorText,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        color: colorText,
        fontSize: fontSize,
      ),
    );
  }
}
