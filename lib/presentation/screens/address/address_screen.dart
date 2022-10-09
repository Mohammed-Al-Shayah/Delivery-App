import 'package:deliveryapp/presentation/widgets/button_widget.dart';
import 'package:deliveryapp/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 80.h,
          title: TextWidget(
            text: 'التوجه للعنوان',
            fontSize: 27.sp,
            fontWeight: FontWeight.w500,
            colorText: const Color(0xff4A4B4D),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context,'/details_screen');
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff4A4B4D),
              ),
            ),
          ],
        ),
      ),
      backgroundColor:const Color(0xffF6F6F6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 375.w,
            height: 545.h,
            color: Colors.white,
            child: Image.asset('assets/images/capture.png',fit: BoxFit.cover,),

          ),
          Container(
            width: 375.w,
            height: 141.h,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 40.h),
                  child: ButtonWidget(
                    text: 'الذهاب للعنوان',
                    backgroundColor: Color(0xffFC6011),
                    borderSideColor:Color(0xffFC6011) ,
                    minimumSize: Size(333.w,45.h),
                    colorText: Color(0xffFFFFFF),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    onPressed: (){},
                  ),
                ),
              ],

            ),
          )
        ],
      ),
    );
  }
}
