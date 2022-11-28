import 'package:arcemployee/message.dart';
import 'package:arcemployee/notification.dart';
import 'package:arcemployee/stats_screen.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:arcemployee/visit.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int _selectedindex = 0;
Color color = ColorUtils.blackColor;

final Pages = [
  Visit(),
  Message(),
  Notificationp(),
  StatsScreen(),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    void selectindex(int val) {
      setState(
        () {
          _selectedindex = val;
        },
      );
    }

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorUtils.backgroundColor,
        bottomNavigationBar: Container(
          width: Get.width,
          height: 95.h,
          color: ColorUtils.whiteColor,
          child: Column(
            children: [
              Container(
                height: 25.h,
                width: 185.w,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorUtils.greyColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Last Synced on 5 May 2022 23:28",
                    style: TextStyle(
                        fontSize: 10.sp, fontFamily: FontUtils.Poppinsnormal),
                  ),
                ),
              ),
              CustomLineIndicatorBottomNavbar(
                lineIndicatorWidth: 2,
                enableLineIndicator: true,
                indicatorType: IndicatorType.Bottom,
                unSelectedColor: color,
                selectedColor: ColorUtils.redcolor,
                currentIndex: _selectedindex,
                customBottomBarItems: [
                  CustomBottomBarItems(
                    icon: Icons.view_list_sharp,
                    label: "Visit",
                  ),
                  CustomBottomBarItems(
                    icon: Icons.message,
                    label: "Message",
                  ),
                  CustomBottomBarItems(
                      icon: Icons.notification_add, label: "Notification"),
                  CustomBottomBarItems(icon: Icons.sync, label: "SYNC"),
                ],
                onTap: (index) {
                  setState(
                    () {
                      _selectedindex = index;
                      print(index);
                    },
                  );
                },
              )
              //       Padding(
              // //         padding: EdgeInsets.only(top:5.h),
              // //         child: Container(height: 25.h,
              // //         width: 183.w,
              // //         decoration: BoxDecoration(
              // //           border: Border.all(color: ColorUtils.greyColor),
              // //           borderRadius: BorderRadius.circular(10)
              // //         ),
              // //         child: Center(
              // //           child: Text("Last Synced on 5 May 2022 23:28",
              // //           style: TextStyle(
              // //             fontSize: 10.sp,

              // //           ),),
              // BottomNavigationBar(
              //   onTap:selectindex,
              //   // (value) =>
              //   // setState(() {
              //   //     _selectedindex = value;
              //   // }),

              //   currentIndex: _selectedindex,

              //   showSelectedLabels: true,
              //   type: BottomNavigationBarType.fixed,
              //   selectedIconTheme: IconThemeData(color: ColorUtils.redcolor),
              //   unselectedIconTheme: IconThemeData(color: ColorUtils.blackColor),
              //   showUnselectedLabels: true,
              //   selectedItemColor: ColorUtils.redcolor,
              //   unselectedItemColor: ColorUtils.blackColor,
              //   unselectedLabelStyle: TextStyle(
              //               fontFamily: FontUtils.Poppinsnormal,
              //               fontSize: 10.sp,
              //               fontWeight: FontWeight.w400,
              //               color: ColorUtils.redcolor
              //             ),
              //   selectedLabelStyle:  TextStyle(
              //               fontFamily: FontUtils.Poppinsnormal,
              //               fontSize: 10.sp,
              //               fontWeight: FontWeight.w400,
              //               color: ColorUtils.redcolor
              //             ),
              //   elevation: 0,
              //   items: [

              //   BottomNavigationBarItem(

              //     icon:Column(
              //       children: [
              //         SvgPicture.asset(

              //         ImageUtils.visit,color: _selectedindex == 0?ColorUtils.redcolor:ColorUtils.blackColor),

              //       ],
              //     ),label: "Visit", ),
              //    BottomNavigationBarItem(icon:SvgPicture.asset(ImageUtils.message  ,color: _selectedindex == 1?ColorUtils.redcolor:ColorUtils.blackColor),label: "Message" ),
              //     BottomNavigationBarItem(icon:SvgPicture.asset(ImageUtils.notification,color: _selectedindex == 2?ColorUtils.redcolor:ColorUtils.blackColor),label: "Notification" ),
              //      BottomNavigationBarItem(icon:SvgPicture.asset(ImageUtils.sync,color: _selectedindex == 3?ColorUtils.redcolor:ColorUtils.blackColor),label: "SYNC" )
              // ]),
              // SvgPicture.asset(ImageUtils.Line)
            ],
          ),
        ),
        body: Pages[_selectedindex],
      ),
    );
  }
}
