import 'package:deliveryapp/app/models/user.dart';
import 'package:deliveryapp/prefs/user_preferance_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      String route =UserPreferenceController().loggedIn?'/welcome_screen':'/login_screen';
      Navigator.pushReplacementNamed(context,route );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            height: 812.h,
            width: 375.w,
          ),

          Image.asset(
            'assets/images/logo.png',
            height: 812.h,
            width: 375.w,
          ),

        ],
      ),
    );
  }
}
