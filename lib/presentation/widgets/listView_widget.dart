import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewWidgets extends StatelessWidget {
  late Widget contents;
  late double width;
  late double height;
  late int itemCount;
  late ScrollPhysics physics;

  ListViewWidgets({
  required  this.contents,
  required  this.width,
  required  this.height,
  required  this.itemCount,
  required  this.physics,
  });


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      physics: physics,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 21.5.w, left: 21.5.w, bottom: 16.h),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xffFFFFFF),
            ),
            child: contents,
          ),
        );
      },
    );
  }
}
