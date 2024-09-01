import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../views/pdf_view.dart';

class CustomApprovalBody extends StatelessWidget {
  const CustomApprovalBody({super.key, required this.isPdfUploaded});
  final bool isPdfUploaded;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsetsDirectional.symmetric(
              horizontal: 11.w, vertical: 10.h),
          width: 353.w,
          height: 121.h,
          decoration: BoxDecoration(
              color: const Color(0xffF9F9F9),
              borderRadius: BorderRadius.circular(10.r)),
          child: Text(
            'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry\'s Standard Dummy Text Ever Since The 1500S, When An Unknown Printer Took A Galley',
            style: TextStyle(
                color: const Color(0xff5D718D),
                fontSize: 14.sp,
                fontFamily: 'Dexef',
                fontWeight: FontWeight.normal,
                height: 1.7.h),
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
        //Requested Start 0000000000000000000000000000000000000000000000000000
        Row(
          children: [
            Text(
              'Requested',
              style: TextStyle(
                  color: const Color(0xff274268),
                  fontSize: 16.sp,
                  fontFamily: 'Dexef',
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            SizedBox(
              height: 158.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 12.r,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 10.r,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 8.r,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    dashColor: const Color(0xffC8CFD8),
                    lineLength: 37.h,
                    dashLength: 2.h,
                  ),
                  CircleAvatar(
                    radius: 6.r,
                    backgroundColor: const Color(0xff929FB2),
                  ),
                  DottedLine(
                    direction: Axis.vertical,
                    dashColor: const Color(0xffC8CFD8),
                    lineLength: 37.h,
                    dashLength: 2.h,
                  ),
                  CircleAvatar(
                    radius: 6.r,
                    backgroundColor: const Color(0xff929FB2),
                  ),
                  SizedBox(
                    height: 1.h,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 88.w,
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16.r,
                        backgroundImage:
                        const AssetImage('assets/images/me.jpg'),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Requested By',
                            style: TextStyle(
                                color: const Color(0xff274268),
                                fontSize: 10.sp,
                                fontFamily: 'Dexef',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'Salah Magdy',
                            style: TextStyle(
                                color: const Color(0xff5D718D),
                                fontSize: 14.sp,
                                fontFamily: 'Dexef',
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '02-05-2024 , 12.00 Pm',
                        style: TextStyle(
                            color: const Color(0xff929FB2),
                            fontSize: 14.sp,
                            fontFamily: 'Dexef',
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16.r,
                        backgroundImage:
                        const AssetImage('assets/images/me.jpg'),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pending By',
                            style: TextStyle(
                                color: const Color(0xff274268),
                                fontSize: 10.sp,
                                fontFamily: 'Dexef',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'Hassan',
                            style: TextStyle(
                                color: const Color(0xff5D718D),
                                fontSize: 14.sp,
                                fontFamily: 'Dexef',
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '02-05-2024 , 12.00 Pm',
                        style: TextStyle(
                            color: const Color(0xff929FB2),
                            fontSize: 14.sp,
                            fontFamily: 'Dexef',
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16.r,
                        backgroundImage:
                        const AssetImage('assets/images/me.jpg'),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Approved By',
                            style: TextStyle(
                                color: const Color(0xff274268),
                                fontSize: 10.sp,
                                fontFamily: 'Dexef',
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'Hassan',
                            style: TextStyle(
                                color: const Color(0xff5D718D),
                                fontSize: 14.sp,
                                fontFamily: 'Dexef',
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '02-05-2024 , 12.00 Pm',
                        style: TextStyle(
                            color: const Color(0xff929FB2),
                            fontSize: 14.sp,
                            fontFamily: 'Dexef',
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        // SizedBox(height: 30.h,),

        SizedBox(
          height: 32.h,
        ),
        Row(
          children: [
            Text(
              'Attachment',
              style: TextStyle(
                color: const Color(0xff274268),
                fontSize: 16.sp,
                fontFamily: 'Dexef',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Column(
          children: [
            (isPdfUploaded)? Card(
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const PDFView()));
                },
                leading: SvgPicture.asset('assets/images/pdf.svg'),
                title: Text(
                  'Pdf Document',
                  style: TextStyle(
                      color: const Color(0xff274268),
                      fontFamily: 'Dexef',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp),
                ),
                subtitle: Text(
                  '2 MB',
                  style: TextStyle(
                      color: const Color(0xff7D8EA4),
                      fontSize: 12.sp,
                      fontFamily: 'Dexef',
                      fontWeight: FontWeight.w400),
                ),
                trailing:
                SvgPicture.asset('assets/images/cancel_trailing.svg'),
              ),
            ):
            ListTile(
              leading: Container(
                width: 48.w,
                height: 48.h,
                padding:
                EdgeInsets.symmetric(vertical: 7.h, horizontal: 11.w),
                decoration: BoxDecoration(
                  color: const Color(0xffEDEFF2),
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: SvgPicture.asset('assets/images/document.svg'),
              ),
              title: Text(
                'Image . png',
                style: TextStyle(
                    color: const Color(0xff7D8EA4),
                    fontFamily: 'Dexef',
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp),
              ),
              subtitle: Text(
                '2 MB',
                style: TextStyle(
                    color: const Color(0xff7D8EA4),
                    fontSize: 12.sp,
                    fontFamily: 'Dexef',
                    fontWeight: FontWeight.w400),
              ),
              trailing:
              SvgPicture.asset('assets/images/cancel_trailing.svg'),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 353.w,
              height: 89,
              decoration: BoxDecoration(
                color: const Color(0xffF9F9F9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                        borderSide: BorderSide.none),
                    hintText: 'Add Comment',
                    hintStyle: TextStyle(
                        color: const Color(0xff5D718D),
                        fontFamily: 'Dexef',
                        fontWeight: FontWeight.normal,
                        fontSize: 15.sp)),
              ),
            )
          ],
        ),
      ],
    );
  }
}