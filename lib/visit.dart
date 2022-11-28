import 'dart:ui';

import 'package:arcemployee/Screens/conatins_start_visit_screen_data.dart';
import 'package:arcemployee/Screens/setting_two.dart';
import 'package:arcemployee/Screens/start_visit_screen_forward.dart';
import 'package:arcemployee/sidedrawer.dart';

import 'package:arcemployee/stats_screen.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:arcemployee/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Widgets_Components/slide_right_transition.dart';

class Visit extends StatefulWidget {
  const Visit({Key? key}) : super(key: key);

  @override
  State<Visit> createState() => _VisitState();
}

class _VisitState extends State<Visit> {
  List TaskStatusColor = [
    ColorUtils.redcolor,
    ColorUtils.orangeColor,
    ColorUtils.greenColor
  ];
  int item = 10;
  int checkstatus = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorUtils.backgroundColor,
          appBar: AppBar(
            toolbarHeight: 85.h,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  ImageUtils.lessthan,
                  height: 20.h,
                  width: 10.w,
                ),
                Text(
                  "Tue,10 May 2022",
                  style:
                      TextStyle(color: ColorUtils.blackColor, fontSize: 14.sp),
                ),
                Container(
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xffB20000),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      '16',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                SvgPicture.asset(
                  ImageUtils.greaterthan,
                  height: 20.h,
                  width: 10.w,
                )
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => StatsScreen(),
                    );
                  },
                  child: SvgPicture.asset(
                    ImageUtils.calender,
                    height: 20.h,
                    width: 20.w,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Start Date",
                              style: FontUtils.kInstructionStyle,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "December 2022",
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Image.asset(
                              "assets/icons/fullcalender.png",
                              height: 240.h,
                              width: 280.w,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Text(
                                    "Cancel",
                                    style: FontUtils.kInstructionGrey,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Text(
                                  "Continue",
                                  style: FontUtils.kInstructionStyle,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    ImageUtils.setting,
                    height: 20.h,
                    width: 20.w,
                  ),
                ),
              )
            ],
            backgroundColor: ColorUtils.whiteColor,
            leading: IconButton(
              icon: SvgPicture.asset(
                ImageUtils.Frame,
                fit: BoxFit.none,
              ),
              onPressed: () => Navigator.push(
                context,
                SlideRightRoute(widget: SettingTwo()),
              ),
            ), // And this!
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Visit Schedule",
                            style: FontUtils.kVisitStyle,
                          ),
                          Text(
                            "Next visit : 00:46:36",
                            style: FontUtils.kInstructionRed,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: item,
                      itemBuilder: (BuildContext, index) {
                        if (index == checkstatus) {
                          // setState(() {
                          item = 4;
                          //  });
                        }
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          margin: const EdgeInsets.symmetric(vertical: 6.0),
                          width: 335.w,
                          decoration: BoxDecoration(
                            color: ColorUtils.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(
                                    () => StartVisitForwardScreen(),
                                  );
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                },
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.teal,
                                        maxRadius: 33,
                                        child: Text(
                                          'LA',
                                          style: TextStyle(
                                              color: ColorUtils.whiteColor),
                                        ),
                                      ),
                                      title: Transform.translate(
                                        offset: Offset(-7, -2),
                                        child: Text(
                                          'Service user ' + '${index++}',
                                          style: TextStyle(
                                              fontFamily:
                                                  FontUtils.Poppinsnormal,
                                              fontSize: 16,
                                              color: Color(0xff121212),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      subtitle: Transform.translate(
                                        offset: Offset(-6, 0),
                                        child: Text(
                                          'Visit 45 mints',
                                          style: TextStyle(
                                            fontFamily: FontUtils.Poppinsnormal,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff121212),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1,
                                      width: 325.w,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: ColorUtils.dividerColor),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListView(
                                      padding: EdgeInsets.only(left: 12),
                                      shrinkWrap: true,
                                      children: [
                                        Row(
                                          children: [
                                            SvgPicture.asset(ImageUtils.watch),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "09:45-10:30",
                                              style: FontUtils.kstyle,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.w,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(ImageUtils.map),
                                            SizedBox(
                                              width: 12.w,
                                            ),
                                            Text(
                                              "1301 Stratford Road B28 9HH",
                                              style: FontUtils.kstyle,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.w,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(ImageUtils.watch),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "Travel time : 15 min",
                                              style: FontUtils.kstyle,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                ImageUtils.location),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "Travel distance : 1 mile",
                                              style: FontUtils.kstyle,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          children: [
                                            index == checkstatus
                                                ? SvgPicture.asset(
                                                    ImageUtils.tickgreen)
                                                : SvgPicture.asset(
                                                    ImageUtils.tick),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              "${index}/4 Task Complete",
                                              style: TextStyle(
                                                  fontFamily:
                                                      FontUtils.Poppinsnormal,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: index == checkstatus
                                                      ? (ColorUtils
                                                          .lightgreenColor)
                                                      : ColorUtils.redcolor),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
