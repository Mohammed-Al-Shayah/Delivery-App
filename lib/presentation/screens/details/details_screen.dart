import 'package:deliveryapp/presentation/screens/details/widgets/reject_button_widget.dart';
import 'package:deliveryapp/presentation/screens/ordrer/components/order_details.dart';
import 'package:deliveryapp/presentation/widgets/button_widget.dart';
import 'package:deliveryapp/presentation/widgets/textField_widget.dart';
import 'package:deliveryapp/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0.h), // here the desired height
        child: AppBar(
          toolbarHeight: 80.h,
          backgroundColor: Color(0xffFFFFFF),
          elevation: 0,
          centerTitle: true,
          title: TextWidget(
            text: 'فاتورة  #35540',
            fontSize: 24.sp,
            colorText: Color(0xff4A4B4D),
            fontWeight: FontWeight.w500,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/navBar_screen');
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff4A4B4D),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375.w,
              color: Colors.white,
              height: 270.h,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 35.h, horizontal: 20.w),
                child: Column(
                  children: [
                    OrederDetails(
                        name: 'اسم المستلم منه',
                        address: 'غزة شارع الجلاء مقابل صيدلية مسلم'),
                    Divider(
                      color: Color(0xffEEEEEE),
                      indent: 22.5.w,
                      endIndent: 22.5.w,
                    ),
                    OrederDetails(
                        name: 'اسم المرسل اليه',
                        address: 'غزة شارع الجلاء مقابل صيدلية مسلم'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 375.w,
              height: 260.h,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 279.w, top: 18.h),
                    child: TextWidget(
                        text: 'التفاصيل',
                        fontWeight: FontWeight.w400,
                        colorText: Color(0xff4A4B4D),
                        fontSize: 16.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 22.w, top: 18.h),
                    child: TextWidget(
                      text:
                          'تفاصيل الطلب تكتب هنا نص تجريبي لتفاصيل الطلب  تفاصيل الطلب تكتب هنا نص تجريبي  تفاصيل ',
                      fontWeight: FontWeight.w400,
                      colorText: Color(0xff757575),
                      fontSize: 15.sp,
                    ),
                  ),
                  Divider(
                    color: Color(0xffEEEEEE),
                    indent: 22.5.w,
                    endIndent: 22.5.w,
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 304.w, top: 18.h),
                    child: TextWidget(
                      text: 'ملاحظة',
                      fontWeight: FontWeight.w400,
                      colorText: Color(0xffFC6011),
                      fontSize: 16.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 160.w, top: 18.h),
                    child: TextWidget(
                      text: 'احضار فكة 200 شيكل للزبون',
                      fontWeight: FontWeight.w400,
                      colorText: Color(0xff757575),
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 375.w,
              color: Colors.white,
              height: 270.h,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.w, bottom: 7.h, right: 20.w, top: 25.h),
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'مبلغ الطلبية',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                        Spacer(),
                        TextWidget(
                          text: 'NIS  |  25',
                          fontWeight: FontWeight.w300,
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
                          text: 'NIS  |  6',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'المبلغ كامل',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                        Spacer(),
                        TextWidget(
                          text: 'NIS  |  31',
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
                    padding: EdgeInsets.only(
                        top: 9.5.h, right: 22.w, left: 22.w, bottom: 12.h),
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'الاجمالي',
                          fontWeight: FontWeight.w300,
                          colorText: Color(0xff330507),
                          fontSize: 18.sp,
                        ),
                        const Spacer(),
                        TextWidget(
                          text: 'NIS  |  31',
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
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 375.w,
              color: Colors.white,
              height: 200.h,
              child: Padding(
                padding: EdgeInsets.only(top: 31.h),
                child: Column(
                  children: [
                    ButtonWidget(
                      text: 'قبول الطلب',
                      fontWeight: FontWeight.w400,
                      colorText: Color(0xffFFFFFF),
                      minimumSize: Size(333.w, 56.h),
                      backgroundColor: Color(0xffFC6011),
                      borderSideColor: Color(0xffFC6011),
                      fontSize: 16.sp,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/address_screen');
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ButtonWidget(
                      text: 'رفض الطلب',
                      fontWeight: FontWeight.w400,
                      colorText: Color(0xff6A6A6A),
                      minimumSize: Size(333.w, 56.h),
                      backgroundColor: Color(0xffFFFFFF),
                      borderSideColor: Color(0xffFFFFFF),
                      fontSize: 16.sp,
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          builder: (context) {
                            return RejectButton();
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

