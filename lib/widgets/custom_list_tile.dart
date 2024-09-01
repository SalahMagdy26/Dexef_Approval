import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_flutter/views/approval_details_approved_view.dart';
import 'package:new_flutter/views/approval_details_toApprove_view.dart';

import '../views/approval_details_canceled_view.dart';
import 'custom_button.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.text,
      required this.hasIcon,
      this.icon,
      required this.width,
      required this.leadingWaH,
      required this.startPad});
  final String text;
  final bool hasIcon;
  final String? icon;
  final double width;
  final double leadingWaH;
  final double startPad;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsetsDirectional.only(end: 12.w, start: startPad.w),
      leading: Container(
        width: leadingWaH.w,
        height: leadingWaH.h,
        decoration: BoxDecoration(
          color: const Color(0xff8A8F9A),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        'Mohamed Gamal',
        style: TextStyle(
          color: const Color(0xff375073),
          fontSize: 16.sp,
        ),
      ),
      subtitle: Text(
        'Give discount to Pete',
        style: TextStyle(
          color: const Color(0xff788AA0),
          fontSize: 12.sp,
        ),
      ),
      trailing: SizedBox(
        width: width.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            (text == 'To Approve')
                ? CustomButton(
                    backGroundColor: Colors.blue,
                    textColor: Colors.white,
                    text: 'To Approve',
                    radius: 8.r,
                    padding: 8.w,
                    borderColor: Colors.transparent,
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ApprovalDetailsToApprove()));
                    },
                    fontSize: 12.sp,
                    width: 80,
                    height: 26,
                  )
                : (text == 'Approved')
                    ? CustomButton(
                        backGroundColor: const Color(0xffD5E8DD),
                        textColor: Colors.green,
                        text: 'Approved',
                        radius: 8.r,
                        padding: 8.w,
                        borderColor: Colors.green,
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ApprovalDetailsApproved()));
                        },
                        fontSize: 12.sp,
                        width: 80,
                        height: 26,
                      )
                    : (text == 'Rejected')
                        ? CustomButton(
                            width: 80,
                            height: 26,
                            backGroundColor: const Color(0xffFFD8D6),
                            textColor: Colors.red,
                            text: 'Rejected',
                            radius: 8.r,
                            padding: 8.w,
                            borderColor: Colors.red,
                            function: () {},
                            fontSize: 12.sp,
                          )
                        : CustomButton(
                            width: 80,
                            height: 26,
                            backGroundColor: const Color(0xffEDEFF2),
                            textColor: const Color(0xff5D718D),
                            text: 'Canceled',
                            radius: 8.r,
                            padding: 8.w,
                            borderColor: const Color(0xffC8CFD8),
                            function: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ApprovalDetailsCanceled()));
                            },
                            fontSize: 12.sp,
                          ),
            SizedBox(
              width: 8.w,
            ),
            (hasIcon) ? SvgPicture.asset(icon!) : const Text(''),
          ],
        ),
      ),
    );
  }
}
