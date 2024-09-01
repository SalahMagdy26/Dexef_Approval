import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignaturesView extends StatefulWidget {
  const SignaturesView({super.key});

  @override
  State<SignaturesView> createState() => _SignaturesView();
}

class _SignaturesView extends State<SignaturesView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height- 53,
      decoration: BoxDecoration(
          color: const Color(0xffF4F4F4),
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.r))),
      child: Column(

        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  ),
                ),
                Text(
                  'Signatures',
                  style: TextStyle(
                      color: const Color(0xff001127),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dexef'),
                ),
                Text(
                  'Done',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h,),
          Padding(
            padding:EdgeInsetsDirectional.only(start: 20.w),
            child: Column(
              children: [
                Slidable(
                  endActionPane: ActionPane(
                    motion:const ScrollMotion(),
                    children: [
                      SlidableAction(

                        onPressed: (context){},
                        backgroundColor: const Color(0xFFFF3B30),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                      ),

                    ],
                  ),
                  child: ListTile(
                    onTap: (){
                    },
                      leading:SvgPicture.asset('assets/images/remove_signature.svg',width: 20.w,height: 20.h,),
                      title: SvgPicture.asset('assets/images/Path_model.svg',width: 42.w,height: 54.h,),),
                ),
                const Divider(),
                Slidable(
                  endActionPane: ActionPane(
                    motion:const DrawerMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context){},
                        backgroundColor: const Color(0xFFFF3B30),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,

                      ),

                    ],
                  ),
                  child: ListTile(
                    onTap: (){
                    },
                    leading:SvgPicture.asset('assets/images/remove_signature.svg',width: 20.w,height: 20.h,),
                    title: SvgPicture.asset('assets/images/Path_model.svg',width: 42.w,height: 54.h,),),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
