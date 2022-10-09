import 'package:deliveryapp/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrederDetails extends StatelessWidget {
  late String name;
  late String address;

  OrederDetails({
   required this.name,
   required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 145),
                child: TextWidget(
                  text: name,
                  colorText: Color(0xffFC6011),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: TextWidget(
                  text: address,
                  colorText: Color(0xff4A4B4D),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        // icon call
        Container(
          width: 32.w,
          height: 32.h,
          decoration: BoxDecoration(
            color: Color(0xff00DD8C),
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(
              Icons.call,
              color: Colors.black,
              size: 30,
            ),
            padding: EdgeInsets.zero,
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        //icon location
        Container(
          width: 32.w,
          height: 32.h,
          decoration: BoxDecoration(
            color: Color(0xffFC6011),
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 30,
            ),
            padding: EdgeInsets.zero,
            onPressed: () {},
          ),
        ),
        // content
      ],
    );
  }
}
