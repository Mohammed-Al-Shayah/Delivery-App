import 'package:deliveryapp/presentation/widgets/button_widget.dart';
import 'package:deliveryapp/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(66.5.w, 100.h, 66.5.w, 71.h),
            child: Image.asset(
              'assets/images/delivery.png',
              width: 241.25.w,
              height: 305.91.h,
              fit: BoxFit.fill,
            ),
          ),
          TextWidget(
            text: 'أهلا بك أحمد إبراهيم',
            fontWeight: FontWeight.w300,
            colorText: Color(0xff4A4B4D),
            fontSize: 28.sp,
          ),
          SizedBox(
            height: 33.h,
          ),
          TextWidget(
            text: 'اضغط علي بدء العمل لتسجيل بدء عملك بالمكتب',
            fontWeight: FontWeight.w100,
            colorText: Color(0xff7C7D7E),
            fontSize: 16.sp,
          ),
          SizedBox(
            height: 40.h,
          ),
          ButtonWidget(
            text: 'بدء العمل',
            fontWeight: FontWeight.w300,
            colorText: Color(0xffFFFFFF),
            backgroundColor: Color(0xffFC6011),
            borderSideColor:Color(0xffFC6011) ,
            fontSize: 20.sp,
            onPressed:() {
              Navigator.pushReplacementNamed(context, '/navBar_screen');
            },
            minimumSize: Size(307.w, 56.h),
          ),
          SizedBox(
            height: 24.h,
          ),

          ButtonWidget(
            text: 'خروج',
            fontWeight: FontWeight.w300,
            colorText: Color(0xff6A6A6A),
            backgroundColor: Color(0xffFFFFFF),
            fontSize: 20.sp,
            borderSideColor:Color(0xffFFFFFF) ,
            onPressed:() {
              Navigator.pushReplacementNamed(context, '/login_screen');
            },
            minimumSize: Size(307.w, 56.h),
          ),
        ],
      ),
    );
  }
}
