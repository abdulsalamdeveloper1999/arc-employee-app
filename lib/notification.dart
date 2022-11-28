import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:arcemployee/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Notificationp extends StatefulWidget {
  const Notificationp({Key? key}) : super(key: key);

  @override
  State<Notificationp> createState() => _NotificationpState();
}

class _NotificationpState extends State<Notificationp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 85.h,
          leading: SvgPicture.asset(
            ImageUtils.Frame,
            fit: BoxFit.none,
          ),
          backgroundColor: ColorUtils.whiteColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Notification",
            style: FontUtils.kToolbarText,
          ),
        ),
        backgroundColor: ColorUtils.backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "14/16 Tasks Completed",
                        style: FontUtils.kOrangeTaskCompleted,
                      ),
                      Text(
                        "15 May 2022 21:60",
                        style: FontUtils.kgreyStyle,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageUtils.cycle),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Device Synced",
                              style: TextStyle(
                                  color: ColorUtils.blackColor,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 May 2022 23:28",
                              style: TextStyle(
                                  color: ColorUtils.darkgrey,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageUtils.cycle),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Device Synced",
                              style: TextStyle(
                                  color: ColorUtils.blackColor,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 May 2022 23:28",
                              style: TextStyle(
                                  color: ColorUtils.darkgrey,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageUtils.cycle),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Device Synced",
                              style: TextStyle(
                                  color: ColorUtils.blackColor,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 May 2022 23:28",
                              style: TextStyle(
                                  color: ColorUtils.darkgrey,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "16 Tasks Completed",
                          style: TextStyle(
                              color: ColorUtils.lightgreenColor,
                              fontFamily: FontUtils.Poppinsnormal,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "15 May 2022 21:60",
                          style: TextStyle(
                              color: ColorUtils.darkgrey,
                              fontFamily: FontUtils.Poppinsnormal,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageUtils.cycle),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Device Synced",
                              style: TextStyle(
                                  color: ColorUtils.blackColor,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 May 2022 23:28",
                              style: TextStyle(
                                  color: ColorUtils.darkgrey,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageUtils.cycle),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Device Synced",
                              style: TextStyle(
                                  color: ColorUtils.blackColor,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 May 2022 23:28",
                              style: TextStyle(
                                  color: ColorUtils.darkgrey,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageUtils.cycle),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Device Synced",
                              style: TextStyle(
                                  color: ColorUtils.blackColor,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 May 2022 23:28",
                              style: TextStyle(
                                  color: ColorUtils.darkgrey,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageUtils.cycle),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Device Synced",
                              style: TextStyle(
                                  color: ColorUtils.blackColor,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 May 2022 23:28",
                              style: TextStyle(
                                  color: ColorUtils.darkgrey,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 70.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageUtils.cycle),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Device Synced",
                              style: TextStyle(
                                  color: ColorUtils.blackColor,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "5 May 2022 23:28",
                              style: TextStyle(
                                  color: ColorUtils.darkgrey,
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
