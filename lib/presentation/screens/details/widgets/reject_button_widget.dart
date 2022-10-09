import 'package:deliveryapp/presentation/widgets/button_widget.dart';
import 'package:deliveryapp/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RejectButton extends StatelessWidget {
  const RejectButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 12),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextWidget(
                text: 'اكتب سبب الرفض',
                fontWeight: FontWeight.w500,
                colorText: Color(0xff4A4B4D),
                fontSize: 18.sp),
            SizedBox(
              height: 17.5.h,
            ),
            Divider(
              color: Color(0xff6A6A6A),
              indent: 22.5.w,
              endIndent: 22.5.w,
            ),
            SizedBox(height: 25.5.w),
            Container(
              height: 43.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF6F6F6),
              ),
              margin: EdgeInsetsDirectional.only(
                  start: 21.w, end: 21.w, bottom: 17.h),
              child: Row(
                children: [
                  TextWidget(
                    text: 'لا يوحد بنزين',
                    fontWeight: FontWeight.w400,
                    colorText: Color(0xff2D2D2D),
                    fontSize: 18.sp.w,
                  ),
                  const Spacer(),
                  Radio(
                    value: true,
                    groupValue: true,
                    activeColor: Color(0xffFC6011),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              height: 43.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF6F6F6),
              ),
              margin: EdgeInsetsDirectional.only(
                  start: 21.w, end: 21.w, bottom: 17.h),
              child: Row(
                children: [
                  TextWidget(
                    text: 'لا يوحد بنزين',
                    fontWeight: FontWeight.w400,
                    colorText: Color(0xff2D2D2D),
                    fontSize: 18.sp.w,
                  ),
                  const Spacer(),
                  Radio(
                    value: true,
                    groupValue: true,
                    activeColor: Color(0xffFC6011),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              height: 43.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF6F6F6),
              ),
              margin: EdgeInsetsDirectional.only(
                  start: 21.w, end: 21.w, bottom: 17.h),
              child: Row(
                children: [
                  TextWidget(
                    text: 'لا يوحد بنزين',
                    fontWeight: FontWeight.w400,
                    colorText: Color(0xff2D2D2D),
                    fontSize: 18.sp.w,
                  ),
                  const Spacer(),
                  Radio(
                    value: true,
                    groupValue: true,
                    activeColor: Color(0xffFC6011),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              height: 43.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF6F6F6),
              ),
              margin: EdgeInsetsDirectional.only(
                  start: 21.w, end: 21.w, bottom: 17.h),
              child: Row(
                children: [
                  TextWidget(
                    text: 'لا يوحد بنزين',
                    fontWeight: FontWeight.w400,
                    colorText: Color(0xff2D2D2D),
                    fontSize: 18.sp.w,
                  ),
                  const Spacer(),
                  Radio(
                    value: true,
                    groupValue: true,
                    activeColor: Color(0xffFC6011),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 200.w),
              child: TextWidget(
                text: 'لدي سبب اخر !',
                fontWeight: FontWeight.w400,
                colorText: Color(0xff2D2D2D),
                fontSize: 16,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'اكتب سبب الرفض .......',
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Color(0xffF2F2F2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Color(0xffF2F2F2)),
                ),
              ),
            ),
            SizedBox(
              height: 75.h,
            ),
            ButtonWidget(
              text: 'ارسل',
              fontWeight: FontWeight.w400,
              colorText: Color(0xffFFFFFF),
              minimumSize: Size(333, 56),
              backgroundColor: Color(0xffFC6011),
              borderSideColor:Color(0xffFC6011) ,
              fontSize: 16,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
