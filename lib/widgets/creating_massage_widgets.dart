import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../Constants/colors.dart';

class CreatingMassageWidgets extends StatelessWidget {
  const CreatingMassageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 285.w,
              constraints: BoxConstraints(
                maxHeight: 300.h,
                minHeight: 36.h,

              ),
              child: TextField(
                maxLines: 5,
                minLines: 1,
                decoration: InputDecoration(
                  hintText: 'Write massage here',
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.w),

                  hintStyle: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: 'Dexef',
                    color: iconColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: const Color(0xffEAECEE),
                  filled: true,
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/images/record_voice_unread.svg',
              width: 36,
              height: 36,
            ),
            SvgPicture.asset('assets/images/send.svg'),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/camera.svg',
              width: 36.w,
              height: 36.h,
            ),
            SizedBox(
              width: 6.w,
            ),
            SvgPicture.asset(
              'assets/images/image.svg',
              width: 36.w,
              height: 36.h,
            ),
            SizedBox(
              width: 6.w,
            ),
            SvgPicture.asset(
              'assets/images/upload_documents.svg',
              width: 36.w,
              height: 36.h,
            ),
            SizedBox(
              width: 6.w,
            ),
            SvgPicture.asset(
              'assets/images/reload.svg',
              width: 36.w,
              height: 36.h,
            ),
          ],
        ),
      ],
    ) ;
  }
}