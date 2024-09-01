import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class YoungContainer extends StatelessWidget {
  const YoungContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.icon,
      required this.function});
  final String text1;
  final String text2;
  final String icon;
  final VoidCallback function;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none),
      padding: EdgeInsets.zero,
      onPressed: function,
      child: Container(
        padding: EdgeInsets.all(12.w.h),
        width: 170.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  icon,
                  width: 32.w,
                  height: 32.h,
                ),
                Text(
                  text1,
                  style: TextStyle(
                      color: const Color(0xff274268),
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              text2,
              style: TextStyle(
                  color: const Color(0xff999FA7),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
