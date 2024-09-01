import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_flutter/widgets/custom_button.dart';

import '../widgets/custom_approval_body.dart';

class ApprovalDetailsToApprove extends StatelessWidget {
  const ApprovalDetailsToApprove({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80.w,
        leading:InkWell(
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
        title: Text(
          'Approval Details',
          style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'Dexef',
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 20.w,end: 20.w,bottom: 20.h),
          child: Column(
            children: [
              SizedBox(
                height: 27.h,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset('assets/images/leading.svg'),
                title: Text(
                  'Approval Title',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Dexef',
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'To Approve',
                  style: TextStyle(
                      color: const Color(0xff0075F4),
                      fontSize: 16.sp,
                      fontFamily: 'Dexef',
                      fontWeight: FontWeight.normal),
                ),
                trailing: SvgPicture.asset('assets/images/forward.svg'),
              ),
              SizedBox(
                height: 16.h,
              ),
              const CustomApprovalBody(isPdfUploaded: false,),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    width: 170,
                      height: 42,
                      backGroundColor: Colors.blue,
                      textColor:  Colors.white,
                      text: 'Follow Up',
                      radius: 8.r,
                      padding: 50.w,
                      borderColor: Colors.blue,
                      function: () {},
                      fontSize: 16.sp,
                      ),
                  CustomButton(
                    width: 170,
                      height: 42,
                      backGroundColor: Colors.white,
                      textColor: const Color(0xffBF5842),
                      text: 'Cancel Request',
                      radius: 8.r,
                      padding: 10.w,
                      borderColor: const Color(0xffBF5842),
                      function: () {},
                      fontSize: 16.sp,
                      ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


