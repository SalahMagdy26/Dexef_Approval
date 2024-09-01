import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'add_or_delete_signature_view.dart';

class PDFView extends StatefulWidget {
  const PDFView({super.key});

  @override
  State<PDFView> createState() => _PDFViewState();
}

class _PDFViewState extends State<PDFView> {
  double left = 0;
  double top = 0;
  double width = 200.0;
  double height = 120.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Color(0xff929FB2),
              size: 32,
            )),
        title: Text(
          'PDF',
          style: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'Dexef',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 64,
            child: Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 20.w, end: 20.w, bottom: 65),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Document Title',
                      style: TextStyle(
                        color: const Color(0xff001127),
                        fontSize: 18.sp,
                        fontFamily: 'Dexef',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheetsv',
                      style: TextStyle(
                          color: const Color(0xff5D718D),
                          fontSize: 15.sp,
                          fontFamily: 'Dexef',
                          height: 1.5.h),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheetsv',
                      style: TextStyle(
                          color: const Color(0xff5D718D),
                          fontSize: 15.sp,
                          fontFamily: 'Dexef',
                          height: 1.5.h),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheetsv',
                      style: TextStyle(
                          color: const Color(0xff5D718D),
                          fontSize: 15.sp,
                          fontFamily: 'Dexef',
                          height: 1.5.h),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              width: MediaQuery.of(context).size.width,
              height: 64.h,
              color: const Color(0xffF8F8F8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/images/upload_bottom.svg',
                    width: 20.w,
                    height: 20.h,
                  ),
                  // SizedBox(
                  //   width: 77.w,
                  // ),
                  SizedBox(
                    width: 141.w,
                    child: PopupMenuButton(
                      icon: MaterialButton(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const AddOrDeleteSignature(),
                            backgroundColor: Colors.transparent,
                          );
                        },
                        color: const Color(0xff0075F4),
                        height: 30.h,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.r),
                            borderSide: BorderSide.none),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/signature.svg',
                              color: Colors.white,
                              width: 20.w,
                              height: 20.h,
                            ),
                            // SizedBox(
                            //   width: 8.w,
                            // ),
                            Text(
                              'Add Signature',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontFamily: 'Dexef'),
                            )
                          ],
                        ),
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Text(
                                'Add Signature',
                                style: TextStyle(
                                    color: const Color(0xff274268),
                                    fontSize: 16.sp,
                                    fontFamily: 'Dexef'),
                              ),
                              SvgPicture.asset(
                                'assets/images/signature.svg',
                                width: 20.w,
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Text(
                                'Upload Image',
                                style: TextStyle(
                                    color: const Color(0xff274268),
                                    fontSize: 16.sp,
                                    fontFamily: 'Dexef'),
                              ),
                              SvgPicture.asset(
                                'assets/images/image_gallery.svg',
                                width: 20.w,
                                height: 20.h,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 83.w,
                  // ),
                  SvgPicture.asset(
                    'assets/images/edit_square.svg',
                    width: 30.w,
                    height: 20.h,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: left,
            top: top,
            child: GestureDetector(
              onPanUpdate: (details) {
                left = max(0, left + details.delta.dx);
                top = max(0, top + details.delta.dy);
                width += details.delta.dx;
                height += details.delta.dy;
                setState(() {});
              },
              onTap: () {},
              child: Container(
                width: width.w,
                height: height.h,
                constraints: BoxConstraints(
                    minHeight: 100.h,
                    minWidth: 100.w,
                    maxHeight: 150.h,
                    maxWidth: 200.w),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.blue,
                )),
                child: SvgPicture.asset(
                  'assets/images/Path_model.svg',
                  width: 100.w,
                  height: 100.h,
                ),
              ),
            ),
          ),
          Positioned(
            left: (left + width < 100) ? 105 : (left + width>200)?width: left+width,
            top: top - 20,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  left = max(0, left + details.delta.dx);
                  top = max(0, top + details.delta.dy);
                });
              },
              onTap: () {

              },
              child: PopupMenuButton(
                icon: SvgPicture.asset('assets/images/view_more.svg',width: 14,height: 14,),
                itemBuilder: (context) => [
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Text(
                        'Cut',
                        style: TextStyle(
                            color: const Color(0xff274268),
                            fontSize: 16.sp,
                            fontFamily: 'Dexef'),
                      ),
                      SizedBox(width: 100.w,),
                      SvgPicture.asset('assets/images/scissors.svg')
                    ],
                  )),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Text(
                          'Copy',
                          style: TextStyle(
                              color: const Color(0xff274268),
                              fontSize: 16.sp,
                              fontFamily: 'Dexef'),
                        ),
                        SizedBox(width: 90.w,),
                        SvgPicture.asset('assets/images/duplicate.svg')
                      ],
                    ),
                  ),
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Text(
                        'Duplicate',
                        style: TextStyle(
                            color: const Color(0xff274268),
                            fontSize: 16.sp,
                            fontFamily: 'Dexef'),
                      ),
                      SizedBox(width: 60.w,),
                      SvgPicture.asset('assets/images/duplicate.svg')
                    ],
                  )),
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Text(
                        'Delete',
                        style: TextStyle(
                            color: const Color(0xffFF3B30),
                            fontSize: 16.sp,
                            fontFamily: 'Dexef'),
                      ),
                      SizedBox(width: 80.w,),
                      SvgPicture.asset('assets/images/delete.svg')
                    ],
                  )),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232.w,
      height: 100.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Text(
                    'Add Signature',
                    style: TextStyle(
                        color: const Color(0xff274268),
                        fontSize: 16.sp,
                        fontFamily: 'Dexef'),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/images/signature.svg',
                    width: 20,
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          // const Divider(color: Color(0xffC6C5C7),),
          SizedBox(
            height: 40.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Text(
                    'Upload Image',
                    style: TextStyle(
                        color: const Color(0xff274268),
                        fontSize: 16.sp,
                        fontFamily: 'Dexef'),
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/images/image_gallery.svg')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
