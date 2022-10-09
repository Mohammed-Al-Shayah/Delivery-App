import 'package:deliveryapp/presentation/widgets/button_widget.dart';
import 'package:deliveryapp/presentation/widgets/listView_widget.dart';
import 'package:deliveryapp/presentation/widgets/textField_widget.dart';
import 'package:deliveryapp/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 375.w,
              height: 545.h,
              child: Stack(
                children: [
                  Container(
                    width: 375.w,
                    height: 247.h,
                    color:const Color(0xffFC6011),
                  ),
                  Positioned(
                    top: 32.h,
                    right: 132.5.w,
                    child: TextWidget(
                      text: 'تسوق دليفري',
                      fontWeight: FontWeight.w300,
                      colorText: Colors.white,
                      fontSize: 24.sp,
                    ),
                  ),
                  Positioned(
                    top: 113.h,
                    right: 21.w,
                    width: 333.w,
                    height: 217.h,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 157.w, top: 28.h, bottom: 10.h),
                            child: TextWidget(
                              text: 'إبدا العمل الآن',
                              fontWeight: FontWeight.w300,
                              colorText:const Color(0xff4A4B4D),
                              fontSize: 24.sp,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 36.w, bottom: 37.h),
                            child: TextWidget(
                              text: 'اضغط بدء العمل لتبدا  ساعات عملك',
                              fontWeight: FontWeight.w100,
                              colorText:const Color(0xff4A4B4D),
                              fontSize: 18.sp,
                            ),
                          ),
                          ButtonWidget(
                            minimumSize: Size(307.w, 56.h),
                            text: 'بدء العمل',
                            fontWeight: FontWeight.w200,
                            colorText:const Color(0xffFC6011),
                            backgroundColor: Colors.white,
                            fontSize: 20.h,
                            borderSideColor:const Color(0xffFC6011),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      scrollable: true,
                                      title: Center(
                                        child: TextWidget(
                                          text: 'رصيد الافتتاحية',
                                          fontWeight: FontWeight.w200,
                                          colorText: const Color(0xff4A4B4D),
                                          fontSize: 24.sp,
                                        ),
                                      ),
                                      content: Container(
                                        width: 333.w,
                                        child: Column(
                                          children: [
                                            Center(
                                              child: TextWidget(
                                                text:
                                                    'ادخل المباغ المتوفر معك\n            لبدء العمل',
                                                fontWeight: FontWeight.w500,
                                                colorText:const Color(0xff4A4B4D),
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 31.h,
                                            ),
                                            TextFieldWidget(
                                              text: '',
                                              textInputType: TextInputType.text,
                                              obscureText: false,
                                            ),


                                          ],
                                        ),
                                      ),
                                      actions: [
                                        Padding(
                                          padding:  EdgeInsets.only(bottom:46.h
                                          ),
                                          child: Center(
                                            child: ButtonWidget(
                                            text: 'موافق',
                                            fontWeight: FontWeight.w200,
                                            colorText:const Color(0xffFFFFFF),
                                            minimumSize:const Size(254, 51),
                                            backgroundColor:const Color(0xffFC6011),
                                            borderSideColor:const Color(0xffFC6011),
                                            fontSize: 20,
                                            onPressed:() {
                                              Navigator.pop(context);
                                            }, ),
                                          ),
                                        )],
                                    );
                                  });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 353.h,
                    right: 21.w,
                    width: 333.w,
                    height: 132.h,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffFDC349),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 101.w, top: 28.h, bottom: 10.h),
                            child: TextWidget(
                              text: 'رصيد المكتب |  الكومشن',
                              fontWeight: FontWeight.w300,
                              colorText:const Color(0xff4A4B4D),
                              fontSize: 20.sp,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 224.w),
                            child: TextWidget(
                              text: '33 NIS',
                              fontWeight: FontWeight.bold,
                              colorText:const Color(0xff4A4B4D),
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 518.h,
                    right: 19,
                    child: TextWidget(
                      text: 'الطلبات لهذا اليوم',
                      fontWeight: FontWeight.w300,
                      colorText:const Color(0xff4A4B4D),
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
            ListViewWidgets(
              physics:const NeverScrollableScrollPhysics(),
              width: 332.w,
              height: 184.sp,
              itemCount: 2,
              contents: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 150.w, top: 19.h, bottom: 10.h),
                    child: TextWidget(
                      text: 'اسم المستلم منه',
                      fontWeight: FontWeight.w300,
                      colorText:const Color(0xffFC6011),
                      fontSize: 18.sp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 24.w,
                    ),
                    child: TextWidget(
                      text: 'غزة شارع الجلاء مقابل صيدلية مسلم عمارة حمد شقة 5',
                      fontWeight: FontWeight.w100,
                      colorText:const Color(0xff330507),
                      fontSize: 16.sp,
                    ),
                  ),
                  Divider(
                    color:const Color(0xff6A6A6A),
                    indent: 22.5.w,
                    endIndent: 22.5.w,
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: 15.w,left: 15.w),
                    child: Row(
                      children: [
                        TextWidget(
                          text: 'الرقم |  #35411',
                          fontWeight: FontWeight.w200,
                          colorText:const Color(0XFF6A6A6A),
                          fontSize: 18.sp,
                        ),

                        const  Spacer(),
                        ButtonWidget(
                          text: 'التفاصيل',
                          fontWeight: FontWeight.w200,
                          colorText:const Color(0xffFFFFFF),
                          minimumSize: Size(92.8.w, 32.h),
                          backgroundColor:const Color(0xffFC6011),
                          borderSideColor:const Color(0xffFC6011),
                          fontSize: 14.sp,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/details_screen');
                          },
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
