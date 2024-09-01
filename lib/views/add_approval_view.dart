import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_flutter/Constants/colors.dart';
import 'package:new_flutter/views/priority_view.dart';

class AddApprovalView extends StatefulWidget {
  const AddApprovalView({super.key});

  @override
  State<AddApprovalView> createState() => _AddApprovalViewState();
}

class _AddApprovalViewState extends State<AddApprovalView> {
   bool switchOn1 = true;

   bool switchOn2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
      height:MediaQuery.of(context).size.height- 53,
      decoration: BoxDecoration(
          color: const Color(0xffF4F4F4),
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.r))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  ),
                ),
                Text(
                  'Add Approval',
                  style: TextStyle(
                      color: const Color(0xff001127),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dexef'),
                ),
                Text(
                  'Send',
                  style: TextStyle(
                      color: const Color(0xff999FA7),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Select Template',
                  hintStyle: TextStyle(
                      color: const Color(0xff274268),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: const Color(0xffC4C4C6),
                    size: 16.w,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h)),
            ),
            SizedBox(
              height: 16.h,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    color: const Color(0xffC4C4C6),
                    fontSize: 16.sp,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h)),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding:
                  EdgeInsetsDirectional.only(start: 18.w, top: 8.h, bottom: 8.h),
              width: 352.w,
              height: 88.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r), color: Colors.white),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                            color: const Color(0xff7F90A6),
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        SvgPicture.asset('assets/images/add_person.svg'),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          'Add Approves',
                          style: TextStyle(color: const Color(0xff7F90A6), fontSize: 16.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const Divider(
                    color: Color(0xffE1E1E2),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding: EdgeInsetsDirectional.symmetric(
                  vertical: 12.h, horizontal: 18.w),
              width: 352.w,
              height: 175.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                'If needed , add extra info here',
                style: TextStyle(color:const Color(0xff7F90A6), fontSize: 16.sp),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding:
                  EdgeInsetsDirectional.only(start: 18.w,top: 5.h,bottom: 5.h,end: 4),
              width: 352.w,
              // height: 90.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Require Responses In The Assigned Order',
                        style: TextStyle(color: textColor, fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 51.w,
                        height: 31.h,
                        child: Switch(value: switchOn1, onChanged: (value) {
                          switchOn1 = value ;
                          setState(() {});
                        },
                          inactiveTrackColor: const Color(0xffE9E9EB),
                          activeTrackColor: const Color(0xff2E8B57),
                          inactiveThumbColor:Colors.white ,
                          trackOutlineColor: WidgetStateColor.transparent,

                        ),
                      ),
                    ],
                  ),

                  const Divider(
                    color: Color(0xffE1E1E2),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Require a response from all approvals',
                        style: TextStyle(color: textColor, fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 51.w,
                        height: 31.h,
                        child: Switch(value: switchOn2, onChanged: (value) {
                          switchOn2 = value ;
                          setState(() {});
                        },
                          inactiveTrackColor: const Color(0xffE9E9EB),
                          activeTrackColor: const Color(0xff2E8B57),
                          inactiveThumbColor:Colors.white ,
                          trackOutlineColor: WidgetStateColor.transparent,

                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.h,),
            InkWell(
              onTap: (){
                showModalBottomSheet(
                    isScrollControlled: true,
                    isDismissible: false,
                    enableDrag: false,

                    context: context, builder: (context) => const PriorityView());
              },
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Priority',
                    hintStyle: TextStyle(
                        color: const Color(0xff274268),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: SizedBox(
                      width: 90.w,
                      child: Row(
                        children: [
                          Text('Medium',style: TextStyle(color: textDimmed,fontSize: 16.sp),),
                          SizedBox(width: 8.w,),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: const Color(0xffC4C4C6),
                            size: 16.w,
                          ),
                        ],
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h)),
                enabled: false,

              ),
            ),
            SizedBox(height: 16.h,),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Row(children: [
                    SizedBox(width: 12.w,),
                    Text('Attachments',style:TextStyle(
                      color: const Color(0xff7F90A6),
                      fontSize: 16.sp,
                    ) ,),
                    SizedBox(width: 4.w,),
                    SvgPicture.asset('assets/images/attachment.svg'),
                  ],),

                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h)),
            ),
          ],
        ),
      ),
    );
  }
}
