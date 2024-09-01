import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_flutter/views/all_view.dart';
import 'package:new_flutter/views/programmer_view.dart';
import 'package:new_flutter/views/recent_view.dart';
import 'package:new_flutter/views/support_view.dart';
import '../Constants/colors.dart';
import '../widgets/custom_list_tile.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/young_container.dart';
import 'administrators_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
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
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 18.w, end: 18.w, top: 69.h),
          child: Column(
            children: [

              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 28.r,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back ,',
                        style: TextStyle(
                            color: const Color(0xffFF8000), fontSize: 14.sp),
                      ),
                      Text(
                        'Mohamed Gamal',
                        style: TextStyle(
                            color: textColor,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 103.w,
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/images/notification.svg'),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              const CustomTextField(
                needSuffixIcon: true,
                icon: Icons.mic,

              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  YoungContainer(
                    function: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AllView()));
                    },
                      icon: 'assets/images/all.svg',
                      text1: '100',
                      text2: 'All'),
                  SizedBox(
                    width: 16.w,
                  ),
                   YoungContainer(
                      function: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AdministratorsView()));
                      },
                      icon: 'assets/images/admin.svg',
                      text1: '20',
                      text2: 'Administrators'),
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
              Row(
                children: [
                   YoungContainer(
                     function: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProgrammerView()));
                     },
                      icon: 'assets/images/programmers.svg',
                      text1: '100',
                      text2: 'Programmers , D'),
                  SizedBox(
                    width: 16.w,
                  ),
                   YoungContainer(
                       function: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SupportView()));
                       },
                       icon: 'assets/images/support.svg',
                       text1: '0',
                       text2: 'Supports , Sales'),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent',
                      style: TextStyle(
                          color: const Color(0xff274268),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const RecentView()));
                      },
                      child: Text(
                        'See more',
                        style: TextStyle(
                          color: const Color(0xff999FA7),
                          fontSize: 14.sp,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 356.w,
                height: 280.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => CustomListTile(
                    text: text[index],
                    hasIcon: false,
                    width: 97,
                    leadingWaH: 40,
                    startPad: 12,
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    color: Color(0xffF7F7F7),
                    height: 0.1,
                  ),
                  itemCount: 12,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
      ),
    );
  }
}
