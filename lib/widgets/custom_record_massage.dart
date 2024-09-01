import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomRecordMassage extends StatelessWidget {
  const CustomRecordMassage(
      {super.key,
        required this.image,
        required this.color,
        required this.mainAxisAlignment,
        required this.backGColor});
  final String image;
  final Color color;
  final Color backGColor;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
            padding: EdgeInsetsDirectional.only(
              start: 10.w,
              end: 10.w,
            ),
            width: 180.w,
            // height: 56.h,
            decoration: BoxDecoration(
                color: backGColor, borderRadius: BorderRadius.circular(16.r)),
            child: Row(
              children: [
                SvgPicture.asset(
                  image,
                  width: 28.w,
                  height: 28.h,
                ),
                SizedBox(
                  width: 7.w,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 122.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(30, (index) {
                            return Container(
                              width: 2.w,
                              height: (index % 2 == 0) ? 8.h : 14.h,
                              margin: EdgeInsets.symmetric(horizontal: 1.w),
                              color: color,
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        '1:30',
                        style: TextStyle(fontSize: 9.sp, color: color),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 80.w,
                          ),
                          Text(
                            '6:06 PM',
                            style: TextStyle(
                              color: color,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}