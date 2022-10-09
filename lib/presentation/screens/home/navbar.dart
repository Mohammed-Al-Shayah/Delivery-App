import 'package:deliveryapp/app/models/button_nav.dart';
import 'package:deliveryapp/presentation/screens/account/account_screen.dart';
import 'package:deliveryapp/presentation/screens/home/home_screen.dart';
import 'package:deliveryapp/presentation/screens/ordrer/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  late int _currentIndex = 1;
  final List<ButtonNavScreen> _buttonNavScreen = <ButtonNavScreen>[
    ButtonNavScreen(widget: AccountScreen(), title: ''),
    ButtonNavScreen(widget: HomeScreen(), title: ''),
    ButtonNavScreen(widget: OrderScreen(), title: ''),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedIconTheme: IconThemeData(color: Colors.black),

        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey[400],
        selectedLabelStyle:const TextStyle(fontWeight: FontWeight.w600),
        backgroundColor:const Color(0xFFFFFFFf),
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person, color:  Color(0xffFC6011)),
            label: 'حسابي',
            tooltip: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            activeIcon: Icon(Icons.home, color:  Color(0xffFC6011)),
            label: 'الرئيسية',
            tooltip: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            activeIcon: Icon(Icons.shop, color: Color(0xffFC6011)),
            label: 'طلبياتي',
            tooltip: '',
          ),

        ],
      ),

      body: _buttonNavScreen[_currentIndex].widget,
    );
  }
}
