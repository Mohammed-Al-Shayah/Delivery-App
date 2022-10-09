import 'package:deliveryapp/app/models/button_nav.dart';
import 'package:deliveryapp/prefs/user_preferance_controller.dart';
import 'package:deliveryapp/presentation/screens/account/account_screen.dart';
import 'package:deliveryapp/presentation/screens/address/address_screen.dart';
import 'package:deliveryapp/presentation/screens/auth/login_screen.dart';
import 'package:deliveryapp/presentation/screens/details/details_screen.dart';
import 'package:deliveryapp/presentation/screens/home/home_screen.dart';
import 'package:deliveryapp/presentation/screens/home/navbar.dart';
import 'package:deliveryapp/presentation/screens/ordrer/order_screen.dart';
import 'package:deliveryapp/presentation/screens/splash_screen.dart';
import 'package:deliveryapp/presentation/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferenceController().initSharedPreference();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(375, 812),
        builder:(context, child) => MaterialApp(
          localizationsDelegates:[
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ] ,
          supportedLocales:[
            Locale('ar'),
          ] ,
          debugShowCheckedModeBanner: false,
          initialRoute:'/splash_screen',
          routes: {
            '/splash_screen':(context)=>const SplashScreen(),
            '/login_screen':(context)=> const LoginScreen(),
            '/welcome_screen':(context)=> const WelcomeScreen(),
            '/home_screen':(context)=>const  HomeScreen(),
            '/order_screen':(context)=>const  OrderScreen(),
            '/details_screen':(context)=>const  DetailsScreen(),
            '/navBar_screen':(context)=>const  NavBarScreen(),
            '/account_screen':(context)=>const  AccountScreen(),
            '/address_screen':(context)=>const  AddressScreen(),
          },
        ),
    );
  }
}

