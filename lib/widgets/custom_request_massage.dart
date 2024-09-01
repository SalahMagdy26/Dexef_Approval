import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';

class CustomRequestMassage extends StatelessWidget {
  const CustomRequestMassage(
      {super.key,
      required this.numberOfButton,
      required this.mainAxisAlignment});
  final int numberOfButton;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
          width: 303.w,
          // height: 230.h,
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: (mainAxisAlignment == MainAxisAlignment.start)
                ? const Color(0xffF7F8F9)
                : const Color(0xffEBF4FE),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Give Discount To Pete',
                    style: TextStyle(
                        color: const Color(0xff152538),
                        fontSize: 14.sp,
                        fontFamily: 'Dexef',
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 70.w,
                    height: 22.h,
                    decoration: BoxDecoration(
                        color: const Color(0xffBCDAFC),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Center(
                        child: Text(
                      'Requested',
                      style: TextStyle(
                        color: const Color(0xff0075F4),
                        fontSize: 12.sp,
                        fontFamily: 'Dexef',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry\'s Standard Dummy Text Ever Since The 1500S, When An Unknown Printer Took A Galley',
                style: TextStyle(
                    color: const Color(0xff5D718D),
                    fontSize: 14.sp,
                    fontFamily: 'Dexef',
                    height: 1.6),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  Text(
                    'Requested by :',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Dexef',
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff526886)),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 10.r,
                    backgroundImage: const AssetImage('assets/images/me.jpg'),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'Salah Magdy        ',
                    style: TextStyle(
                      color: const Color(0xff274268),
                      fontSize: 14.sp,
                      fontFamily: 'Dexef',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Text(
                    'Pending response by :',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Dexef',
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff526886)),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 10.r,
                    backgroundImage: const AssetImage('assets/images/me.jpg'),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    'Salah Magdy        ',
                    style: TextStyle(
                      color: const Color(0xff274268),
                      fontSize: 14.sp,
                      fontFamily: 'Dexef',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              (numberOfButton == 3)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          width: 80,
                            height: 30,
                            backGroundColor: const Color(0xff2E8B57),
                            textColor: Colors.white,
                            text: 'Approve',
                            radius: 8,
                            padding: 10,
                            borderColor: const Color(0xff2E8B57),
                            function: () {},
                            fontSize: 14,
                            ),
                        CustomButton(
                          width: 80,
                            height: 30,
                            backGroundColor: const Color(0xffF7F8F9),
                            textColor: const Color(0xffC3634E),
                            text: 'Reject',
                            radius: 8,
                            padding: 10,
                            borderColor: const Color(0xffD69A8D),
                            function: () {},
                            fontSize: 14,
                            ),
                        CustomButton(
                            backGroundColor: const Color(0xffEBF4FE),
                            textColor: const Color(0xff687E9B),
                            text: 'View Details',
                            radius: 8,
                            padding: 10,
                            borderColor: const Color(0xffBEC6D1),
                            function: () {},
                            fontSize: 14,
                            width: 103,
                        height: 30,
                        ),
                      ],
                    )
                  : CustomButton(
                width: 103,
                      height: 30,
                      backGroundColor: const Color(0xffEBF4FE),
                      textColor: const Color(0xff687E9B),
                      text: 'View Details',
                      radius: 8.r,
                      padding: 10.w,
                      borderColor: const Color(0xffBEC6D1),
                      function: () {},
                      fontSize: 14.sp,
                      ),
            ],
          ),
        )
      ],
    );
  }
}
