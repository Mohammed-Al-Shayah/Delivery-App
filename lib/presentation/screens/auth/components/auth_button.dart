import 'package:deliveryapp/presentation/screens/auth/components/auth_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  late String text;
  late FontWeight fontWeight;
  late Color colorText;

  late Color backgroundColor;

  late double fontSize;
  late void Function() onPressed;

  AuthButton({
   required this.text,
   required this.fontWeight,
   required this.colorText,
   required this.backgroundColor,
   required this.fontSize,
   required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: AuthText(
        text: text,
        fontWeight: fontWeight,
        color: colorText,
        fontSize: fontSize,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(307.w, 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
    );
  }
}
