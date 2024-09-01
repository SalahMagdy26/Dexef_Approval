import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.backGroundColor,
        required this.textColor,
        required this.text,
        required this.radius,
        required this.padding,
        required this.borderColor,
        required this.function,
        required this.fontSize,
        required this.width,
        required this.height,
      });
  final Color backGroundColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  final double radius;
  final double padding;
  final VoidCallback function;
  final double fontSize;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: MaterialButton(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius.r),
          borderSide: BorderSide(color: borderColor),
        ),
        padding: EdgeInsets.symmetric(horizontal: padding.w,),
        color: backGroundColor,
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize.sp,
            fontFamily: 'Dexef',
          ),
        ),
      ),
    );
  }
}
