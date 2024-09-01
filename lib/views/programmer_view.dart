import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_list_tile.dart';
import '../widgets/custom_text_field.dart';

class ProgrammerView extends StatelessWidget {
  ProgrammerView({super.key});
  final List<String> text = [
    'To Approve',
    'Approved',
    'Rejected',
    'To Approve',
    'Approved',
    'Rejected',
    'To Approve',
    'Approved',
    'Rejected',
    'To Approve',
    'Approved',
    'Rejected',
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leadingWidth: 80.w,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.blue,
                size: 28.sp,
              ),
              Text(
                ' Back',
                style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Dexef',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
      body: Column(children: [
        SizedBox(height: 24.h,),
        Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            Text(
              'Programmers',
              style: TextStyle(fontFamily: 'Dexef', fontSize: 34.sp),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const CustomTextField(
            needSuffixIcon: true,
            icon: Icons.mic,

          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsetsDirectional.only(start: 20.w),
              itemBuilder: (context, index) => CustomListTile(
                text: text[index],
                hasIcon: true,
                width: 120.w,
                leadingWaH: 48,
                startPad: 0,
                icon: 'assets/images/arrow.svg',
              ),
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsetsDirectional.only(start: 64.w),
                child: Divider(
                  color: const Color(0xffF2F4F6),
                  height: 0.1.h,
                ),
              ),
              itemCount: 12),
        )
      ],),
    );
  }
}
