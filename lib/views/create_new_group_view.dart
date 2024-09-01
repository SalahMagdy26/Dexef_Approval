import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter/views/group_chat_view.dart';
import 'package:new_flutter/views/new_group_details_view.dart';

class CreateNewGroup extends StatelessWidget {
  const CreateNewGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
      width: 393.w,
      height: 800.h - 53,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.r))),
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
                'New Group',
                style: TextStyle(
                    color: const Color(0xff001127),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Dexef'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const GroupChat()));
                },
                child: Text(
                  'create',
                  style: TextStyle(
                      color: const Color(0xff999FA7),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dexef',
                      fontSize: 16.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            width: 361.w,
            height: 33.h,
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'To',
                  hintStyle: TextStyle(
                    color: const Color(0xff7D8EA4),
                    fontSize: 15.sp,
                  ),
                  fillColor: const Color(0xffF2F4F6),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 19.w, vertical: 8.h)),
            ),
          ),
          SizedBox(
            height: 16.w,
          ),
          Row(
            children: [
              Text(
                'suggested',
                style: TextStyle(
                    color: const Color(0xff999FA7),
                    fontSize: 15.sp,
                    fontFamily: 'Dexef',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => ListTile(
                      onTap: (){
                        showModalBottomSheet(
                            isScrollControlled: true,
                            isDismissible: false,
                            enableDrag: false,

                            context: context,
                            builder: (context) => const NewGroupDetails());
                      },
                      contentPadding: EdgeInsets.zero,
                      leading: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            backgroundImage: const NetworkImage(
                                'https://lh3.googleusercontent.com/a/ACg8ocLd3tmE35cFb93pZQtZe-zEwmz76NjIiQS0wgB_edNJQkZyAOA=s288-c-no'),
                            radius: 30.r,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 8.r,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 7.r,
                          ),
                        ],
                      ),
                      title: Text(
                        'Salah Magdy',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Dexef'),
                      ),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (val) {},
                        activeColor: Colors.green,
                        shape: const CircleBorder(),
                        splashRadius: 20,
                        side: const BorderSide(color: Color(0xff929FB2),),
                      ),
                    ),
                separatorBuilder: (context, index) => Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: 50.w, end: 18.w),
                      child: const Divider(
                        color: Color(0xffC6C5C7),
                      ),
                    ),
                itemCount: 7),
          )
        ],
      ),
    );
  }
}
