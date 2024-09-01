import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter/views/recent_sent_view.dart';
import 'package:new_flutter/widgets/custom_list_tile.dart';
import 'package:new_flutter/widgets/custom_text_field.dart';

import '../widgets/navigation_bar.dart';

class RecentView extends StatefulWidget {
  const RecentView({super.key});

  @override
  State<RecentView> createState() => _RecentViewState();
}

class _RecentViewState extends State<RecentView> {
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
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Container(
            width: 150.w,
            height: 32.h,
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(
              color: const Color(0xffEEEEF0),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical:5.h,horizontal: 7.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Text(
                    'Received',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13.sp, fontFamily: 'Dexef'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 8.h,),
                  child: const VerticalDivider(
                    color: Color(0xff8E8E93),
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RecentSent(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Sent',
                        // textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14.sp, fontFamily: 'Dexef'),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          const Divider(
            color: Color(0xffF2F4F6),
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Recent',
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
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3,
      ),
    );
  }
}
