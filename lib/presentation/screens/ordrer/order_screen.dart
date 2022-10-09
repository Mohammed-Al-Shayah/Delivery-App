import 'package:deliveryapp/presentation/widgets/button_widget.dart';
import 'package:deliveryapp/presentation/widgets/listView_widget.dart';
import 'package:deliveryapp/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF6F6F6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0.h), // here the desired height
        child: AppBar(
          backgroundColor:const Color(0xffFC6011),
          centerTitle: true,
          toolbarHeight: 60,
          title: TextWidget(
            text: 'طلبات اليوم',
            fontWeight: FontWeight.w300,
            colorText: Colors.white,
            fontSize: 20.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 46.h,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 20.w),
                    child: TextWidget(
                      text: 'عدد الطلبات ( 12 )',
                      fontWeight: FontWeight.w200,
                      colorText: Color(0xff4A4B4D),
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, right: 20.w),
                    child: TextWidget(
                      text: '23-6-2021',
                      fontWeight: FontWeight.w200,
                      colorText: Color(0xffA6A6A6),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            ListViewWidgets(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              height: 270.h,
              width: 332.w,
              contents: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 183.sp, top: 15.h, bottom: 12.h),
                    child: TextWidget(
                      text: 'اسم المستلم منه',
                      fontWeight: FontWeight.w300,
                      colorText: Color(0xffFC6011),
                      fontSize: 18.sp,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, bottom: 7.h, right: 20.w),
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'اجمالي الطلب',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                        Spacer(),
                        TextWidget(
                          text: 'NIS  |  25  ',
                          fontWeight: FontWeight.w400,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, bottom: 7.h, right: 20.w),
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'تكلفة التوصيل',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                        Spacer(),
                        TextWidget(
                          text: 'NIS  |  5 ',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'المبلغ المتبق',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                        Spacer(),
                        TextWidget(
                          text: 'NIS  |  0 ',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff6A6A6A),
                    indent: 22.5.w,
                    endIndent: 22.5.w,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 9.5.h,right: 22.w,left: 22.w ),
                    child: Row(
                      children: [
                        ButtonWidget(
                          text: 'تم التسليم',
                          fontWeight: FontWeight.w300,
                          colorText: Colors.white,
                          minimumSize: Size(92.8.w, 32.h),
                          backgroundColor: Color(0xff00DD8C),
                          borderSideColor: Color(0xff00DD8C),
                          fontSize: 14.sp,
                          onPressed: () {
                          },
                        ),
                       const Spacer(),
                        TextWidget(
                          text: '3:15 |  وقت التسليم',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
