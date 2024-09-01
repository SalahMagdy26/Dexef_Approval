import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PriorityView extends StatefulWidget {
  const PriorityView({super.key});

  @override
  State<PriorityView> createState() => _PriorityViewState();
}

class _PriorityViewState extends State<PriorityView> {
   bool medium = true ;
   bool important = false ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 53,
      decoration: BoxDecoration(
          color: const Color(0xffF4F4F4),
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.r))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w, top: 12.h),
            child: Row(
              children: [
                InkWell(
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
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  'Select A Basic Order Type',
                  style: TextStyle(
                      color: const Color(0xff001127),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dexef'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
            width: 352.w,
            // height: 88.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r), color: Colors.white),
            child: Column(
              children: [

                ListTile(
                  onTap: (){
                    (medium)?medium=false:(medium==false)?medium=true:null;
                    setState(() {});
                  },
                  trailing: (medium)?SvgPicture.asset('assets/images/sahh.svg'):const Text(''),
                  contentPadding: EdgeInsets.zero,
                  minTileHeight: 25,
                  title: Text(
                    'Medium',
                    style: TextStyle(
                      color: const Color(0xff001227),
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                const Divider(
                  color: Color(0xffE1E1E2),
                ),
                ListTile(
                  onTap: (){
                    (important)?important=false:(important==false)?important=true:null;
                    setState(() {});
                  },
                  trailing: (important)?SvgPicture.asset('assets/images/sahh.svg'):const Text(''),
                  contentPadding: EdgeInsets.zero,
                  minTileHeight: 25,
                  title: Text(
                    'Important',
                    style: TextStyle(
                      color: const Color(0xff001227),
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
