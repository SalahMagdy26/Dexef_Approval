import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_flutter/views/add_approval_view.dart';
import 'package:new_flutter/views/chat_view.dart';
import 'package:new_flutter/views/home_view.dart';
import 'package:new_flutter/views/recent_view.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key, required this.currentIndex});
  int currentIndex;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> views = [
    HomeView(),
    const AddApprovalView(),
    const ChatView(),
    const RecentView()
  ];


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset((widget.currentIndex == 0)
              ? 'assets/images/home_icon.svg'
              : 'assets/images/grey_home.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/add.svg'),
          label: 'Add Approval',
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset((widget.currentIndex == 2)
                ? 'assets/images/chat_blue.svg'
                : 'assets/images/chat.svg'),
            label: 'Chat'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset((widget.currentIndex == 3)
                ? 'assets/images/recent_blue.svg'
                : 'assets/images/recent.svg'),
            label: 'Recent'),
      ],
      selectedItemColor: Colors.blue,
      currentIndex: widget.currentIndex,
      unselectedItemColor: const Color(0xff929FB2),
      onTap: (index) {
        widget.currentIndex = index;
        (widget.currentIndex == 1)
            ? showModalBottomSheet(
                 isScrollControlled: true,
                isDismissible: false,
                enableDrag: false,

                context: context, builder: (context) => const AddApprovalView())
            : Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => views[index]));
        setState(() {});
      },
      selectedLabelStyle: TextStyle(
        color: Colors.blue,
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        color:const Color(0xff929FB2),
        fontSize: 12.sp,
      ),
      showUnselectedLabels: true,
      useLegacyColorScheme: false,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    );
  }
}
