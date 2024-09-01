import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/creating_massage_widgets.dart';
import '../widgets/custom_record_massage.dart';
import '../widgets/custom_request_massage.dart';
import '../widgets/date_of_chat_massage.dart';

class ChatWithUsers extends StatelessWidget {
  const ChatWithUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55.h,
        backgroundColor: const Color(0xffE3E3E3),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.blue,
                size: 28.sp,
              ),
              Text(
                ' 33',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        title: Column(
          children: [
            Text(
              'Salah Magdy',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: 'Dexef',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Last seen recently',
              style: TextStyle(
                  color: const Color(0xff8A8A8E),
                  fontSize: 14.sp,
                  fontFamily: 'Dexef',
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 22.r,
            backgroundImage: const AssetImage('assets/images/me.jpg'),
          ),
          SizedBox(
            width: 16.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsetsDirectional.only(start: 12.w, end: 12.w, bottom: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 588.h,
                width: 393,
                child: ListView(
                  reverse: true,
                  children: [
                    const CustomRequestMassage(numberOfButton: 1, mainAxisAlignment: MainAxisAlignment.end,),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRequestMassage(numberOfButton: 3, mainAxisAlignment: MainAxisAlignment.start,),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DateOfTheChat(
                      text: 'Today',
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/record_read.svg',
                      color: Color(0xff5D718D),
                      mainAxisAlignment: MainAxisAlignment.start,
                      backGColor: Color(0xffF7F8F9),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/play_voice.svg',
                      color: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      backGColor: Color(0xff4C9EF7),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/record_read.svg',
                      color: Color(0xff5D718D),
                      mainAxisAlignment: MainAxisAlignment.start,
                      backGColor: Color(0xffF7F8F9),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const CustomRecordMassage(
                      image: 'assets/images/play_voice.svg',
                      color: Colors.white,
                      mainAxisAlignment: MainAxisAlignment.end,
                      backGColor: Color(0xff4C9EF7),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const DateOfTheChat(text: 'Yesterday'),
                    SizedBox(height:16.h,),
                    const CustomTextMassage(mainAxisAlignment: MainAxisAlignment.start, backGColor: Color(0xffF8F9FA))
                  ],
                ),
              ),
              const CreatingMassageWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextMassage extends StatelessWidget {
  const CustomTextMassage(
      {super.key, required this.mainAxisAlignment, required this.backGColor});
  final MainAxisAlignment mainAxisAlignment;
  final Color backGColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [

        Container(
          constraints: BoxConstraints(
            maxWidth:MediaQuery.of(context).size.width*0.75 ,
          ),
          // width:180.w,
          // height: 56.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: backGColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,Salah.Welcome to',

                style: TextStyle(
                    fontSize: 15.sp,
                    fontFamily: 'Dexef',
                    color: const Color(0xff152538)),
              ),
              SizedBox(height: 7.h,),
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('6:06',textAlign: TextAlign.end,style: TextStyle(
                    fontSize: 10.sp,
                    color:const Color(0xff5D718D)
                  ),)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

