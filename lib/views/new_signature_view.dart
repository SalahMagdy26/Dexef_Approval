import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter/views/signatures_view.dart';

class NewSignature extends StatefulWidget {
  const NewSignature({super.key});

  @override
  State<NewSignature> createState() => _NewSignature();
}

class _NewSignature extends State<NewSignature> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
      height:MediaQuery.of(context).size.height- 53,
      decoration: BoxDecoration(
          color: const Color(0xffF4F4F4),
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.r))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                'New Signature',
                style: TextStyle(
                    color: const Color(0xff001127),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Dexef'),
              ),
              Text(
                'save',
                style: TextStyle(
                    color: const Color(0xff999FA7),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          InkWell(
            onTap: (){
              showModalBottomSheet(
                  isScrollControlled: true,
                  isDismissible: false,
                  enableDrag: false,

                  context: context, builder: (context) => const SignaturesView());
            },
            child: Text('if there is signature',

              style: TextStyle(
              color: const Color(0xffFF00E6),
              fontSize: 16.sp,
              fontFamily: 'Dexef',
              fontWeight: FontWeight.bold
            ),),
          ),
          Column(
            children: [
              Text('Sign Your Name Using Your Finger',
              style: TextStyle(
                color: const Color(0xff999FA7),
                fontSize: 15.sp,
                fontFamily: 'Dexef',
              ),),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.refresh_rounded,size: 20,color: Color(0xff999FA7),),
                  SizedBox(width: 10.w,),
                  Text('Clear',style: TextStyle(
                    color: const Color(0xff999FA7),
                    fontFamily: 'Dexef',
                    fontSize: 15.sp
                  ),)
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
