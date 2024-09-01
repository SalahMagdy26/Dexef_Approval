import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_flutter/views/new_massage_view.dart';
import 'package:new_flutter/widgets/custom_text_field.dart';

import '../widgets/navigation_bar.dart';
import 'chating_with_users_view.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 45.w,
            ),
            Text(
              'Chat',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  isDismissible: false,
                  enableDrag: false,

                  context: context, builder: (context) => const NewMassage());
            },
            icon: SvgPicture.asset('assets/images/edit mail.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextField(
              needSuffixIcon: false,
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 9.w),
              child: SizedBox(
                height: 105.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const BuildStoryIcon(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 16.w,
                        ),
                    itemCount: 7),
              ),
            ),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const BuildChatIcon(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 1.h,
                      ),
                  itemCount: 15),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,
      ),
    );
  }
}

class BuildChatIcon extends StatelessWidget {
  const BuildChatIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ChatWithUsers()));
      },
      contentPadding: EdgeInsetsDirectional.zero,
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
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15.sp, fontFamily: 'Dexef'),
      ),
      subtitle: Text(
        'Hello,I\'m a Flutter developer',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: const Color(0xff274268),
            fontSize: 15.sp,
            fontFamily: 'Dexef'),
      ),
      trailing: Column(
        children: [
          const Text(
            '12:05 PM',
            style: TextStyle(color: Color(0xff8A8A8E), fontSize: 14),
          ),
          SizedBox(
            height: 6.h,
          ),
          CircleAvatar(
            backgroundColor: const Color(0xff8190A6),
            radius: 10.r,
            child: Center(
                child: Text(
              '4',
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            )),
          )
        ],
      ),
    );
  }
}

class BuildStoryIcon extends StatelessWidget {
  const BuildStoryIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      child: Column(
        children: [
          Stack(
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
          SizedBox(
            height: 7.h,
          ),
          const Text(
            'Salah Magdy Nooh',
            // maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
