import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'new_signature_view.dart';

class AddOrDeleteSignature extends StatelessWidget {
  const AddOrDeleteSignature({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w, bottom: 30.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 82.h,
            // padding: EdgeInsets.symmetric(vertical: 15.h),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r))),
            child: Center(
              child: ListTile(
                onTap: (){},
                title: SvgPicture.asset('assets/images/Path_model.svg'),
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
          Container(
            height: 82.h,
            // padding: EdgeInsets.symmetric(vertical: 15.h),
            color: Colors.white,
            child: Center(
              child: ListTile(
                onTap: (){},
                title: SvgPicture.asset('assets/images/Path_model.svg'),
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
          Container(
            height: 54.h,
            // padding: EdgeInsets.symmetric(vertical: 15.h),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.r),
                    bottomRight: Radius.circular(12.r))),
            child: ListTile(
              onTap: (){

                showModalBottomSheet(
                    isScrollControlled: true,
                    isDismissible: false,
                    enableDrag: false,

                    context: context, builder: (context) => const NewSignature());
              },
              title: Text(
                'Add Or Delete Signature',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.sp,
                    fontFamily: 'Dexef',
                    fontWeight: FontWeight.bold),
              ),
            ),

          ),
          SizedBox(height: 12.h,),
          Container(
            height: 56.h,
            // padding: EdgeInsets.symmetric(vertical: 18.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.r)
            ),
            child: ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text('Cancel',
                textAlign: TextAlign.center,
                style:TextStyle(
                  color: Colors.blue,
                  fontSize: 18.sp,
                  fontFamily: 'Dexef',
                  fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}
