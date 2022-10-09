
import 'package:deliveryapp/app/api/controller/user_api_controller.dart';
import 'package:deliveryapp/prefs/user_preferance_controller.dart';
import 'package:deliveryapp/presentation/screens/auth/components/auth_button.dart';
import 'package:deliveryapp/presentation/screens/auth/components/auth_text.dart';
import 'package:deliveryapp/presentation/screens/auth/components/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController =TextEditingController();
    _passwordTextController =TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 812.h,
              width: 375.w,
              child: Stack(
                children: [
                  Positioned(
                    right: 77.5.w,
                    left: 77.5.w,
                    top: 210.h,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 220.w,
                      height: 203.h,
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/images/g1.png',
                      width: 407.w,
                      height: 293.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/images/g2.png',
                      width: 407.w,
                      height: 293.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 440.h,
                    right: 108.5.w,
                    child: AuthText(
                      text: 'تسجيل دخول',
                      fontWeight: FontWeight.w300,
                      color: const Color(0xff4A4B4D),
                      fontSize: 30.sp,
                    ),
                  ),
                  Positioned(
                    top: 507.h,
                    right: 34.w,
                    left: 34.w,
                    child: AuthTextField(
                      controller: _emailTextController,
                      text: 'اسم المستخدم',
                      textInputType: TextInputType.text,
                      obscureText: false,
                    ),
                  ),
                  Positioned(
                    top: 591.h,
                    right: 34.w,
                    left: 34.w,
                    child: AuthTextField(
                      controller: _passwordTextController,
                      text: 'كلمة المرور',
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ),
                  Positioned(
                    top: 675.h,
                    right: 34.w,
                    left: 34.w,
                    child: AuthButton(
                      onPressed: () async{
                        await performLogin();
                        // Navigator.pushReplacementNamed(context, '/welcome_screen');
                      },
                      text: 'دخول',
                      fontWeight: FontWeight.w300,
                      colorText:const Color(0xffFFFFFF),
                      backgroundColor:const Color(0xffFC6011),
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
  Future<void> performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  Future<void> login() async {
    bool status = await UserApiController().login(
        email: _emailTextController.text,
        password: _passwordTextController.text);
    if (status) {
      Navigator.pushReplacementNamed(context, '/welcome_screen');
    } else {
      // showSnackBar(context: context, message: 'Login failed', error: true);
      print('Login failed');
    }
  }

}


