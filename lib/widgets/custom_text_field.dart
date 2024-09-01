import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.icon, required this.needSuffixIcon});
  final bool needSuffixIcon ;
  final IconData? icon ;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: iconColor,
        ),
        suffixIcon: (needSuffixIcon)?Icon(icon,color: iconColor,):const Text('') ,
        hintText: 'Search',
        hintStyle:   TextStyle(
            color: iconColor,
            fontSize: 15.sp,
            fontFamily: 'Dexef'),
        fillColor: const Color(0xffF2F4F6),
        contentPadding:  EdgeInsetsDirectional.only(start: 10.w, end: 4.w),
        filled: true,
      ),
    );
  }
}