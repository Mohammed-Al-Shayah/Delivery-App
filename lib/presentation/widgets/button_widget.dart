import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  late String text;
  late FontWeight fontWeight;
  late Color colorText;
   Size minimumSize=Size(307.w, 56.h);

  late Color backgroundColor;
  late Color borderSideColor;
  late double fontSize;
  late void Function() onPressed;


  ButtonWidget({
 required this.text,
 required this.fontWeight,
 required this.colorText,
 required this.minimumSize,
 required this.backgroundColor,
 required this.borderSideColor,
 required this.fontSize,
 required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
      style: TextStyle(
          fontWeight: fontWeight,
          color: colorText,
          fontSize: fontSize,
      ),
      ),

      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: minimumSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(color:borderSideColor )
        ),
      ),
    );
  }
}
