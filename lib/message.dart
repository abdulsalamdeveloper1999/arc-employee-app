import 'package:arcemployee/Widgets_Components/custom_back_button.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:arcemployee/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorUtils.backgroundColor,
        appBar: AppBar(
          toolbarHeight: 85.h,
          elevation: 0,
          backgroundColor: ColorUtils.whiteColor,
          leading: CustomBackButton(),
          title: Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                child: SvgPicture.asset(
                  "assets/icons/laonline.svg",
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cheyenne",
                    style: FontUtils.klargestyle,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    "Last seen 15:54",
                    style: FontUtils.ksmallten,
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 80.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: ColorUtils.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(
              children: [
                SvgPicture.asset(ImageUtils.pin),
                SizedBox(
                  width: 15.w,
                ),
                SvgPicture.asset(
                  ImageUtils.mic,
                ),
                SizedBox(
                  width: 15.w,
                ),
                SvgPicture.asset(
                  ImageUtils.pic,
                ),
                SizedBox(
                  width: 10.w,
                ),
                _textformfieldMessage()
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Text(
                    "December 20",
                    style: TextStyle(
                        fontFamily: FontUtils.Poppinsnormal,
                        fontSize: 14.sp,
                        color: ColorUtils.blackColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    //   height: 40.h,
                    // width: 203.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorUtils.whiteColor),
                    child: Text.rich(
                      TextSpan(
                        text: "Hi!!! How are You? ",
                        style: FontUtils.kstyle,
                        children: [
                          TextSpan(
                            text: "10:02 p.m",
                            style: TextStyle(
                                fontFamily: FontUtils.Poppinsnormal,
                                fontSize: 10.sp,
                                color: ColorUtils.blackColor,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    //   height: 40.h,
                    // width: 203.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorUtils.whiteColor),
                    child: Text.rich(
                      TextSpan(
                        text: "Fine. How about you? ",
                        style: TextStyle(
                            fontFamily: FontUtils.Poppinsnormal,
                            fontSize: 14.sp,
                            color: ColorUtils.blackColor,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: "10:02 p.m ",
                            style: TextStyle(
                                fontFamily: FontUtils.Poppinsnormal,
                                fontSize: 10.sp,
                                color: ColorUtils.blackColor,
                                fontWeight: FontWeight.w400),
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 4.h),
                                  child:
                                      SvgPicture.asset(ImageUtils.doubletick),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    //   height: 40.h,
                    // width: 203.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorUtils.whiteColor),
                    child: Text.rich(
                      TextSpan(
                        text: "Fine. ",
                        style: FontUtils.kstyle,
                        children: [
                          TextSpan(
                            text: "10:02 p.m",
                            style: FontUtils.ksmallten,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorUtils.whiteColor),
                    child: Text.rich(
                      TextSpan(
                        text: "I have completed my task ",
                        style: TextStyle(
                            fontFamily: FontUtils.Poppinsnormal,
                            fontSize: 14.sp,
                            color: ColorUtils.blackColor,
                            fontWeight: FontWeight.w400),
                        children: [
                          TextSpan(
                            text: "10:02 p.m ",
                            style: TextStyle(
                                fontFamily: FontUtils.Poppinsnormal,
                                fontSize: 10.sp,
                                color: ColorUtils.blackColor,
                                fontWeight: FontWeight.w400),
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 4.h),
                                  child:
                                      SvgPicture.asset(ImageUtils.doubletick),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: ColorUtils.whiteColor,
                    ),
                    child: Text.rich(
                      TextSpan(
                        text: "Good ",
                        style: FontUtils.kstyle,
                        children: [
                          TextSpan(
                            text: "10:02 p.m",
                            style: FontUtils.ksmallten,
                          )
                        ],
                      ),
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

class _textformfieldMessage extends StatelessWidget {
  const _textformfieldMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 237.w,
      height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorUtils.textfield,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Type here...",
            hintStyle: TextStyle(
                color: ColorUtils.textfieldhint,
                fontFamily: FontUtils.Poppinsnormal,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
            border: InputBorder.none,
            suffixIcon: SvgPicture.asset(
              ImageUtils.send,
              height: 20.h,
              width: 20.w,
              fit: BoxFit.none,
            ),
            prefixIcon: SvgPicture.asset(
              ImageUtils.emoji,
              height: 20.h,
              width: 20.w,
              fit: BoxFit.none,
            ),
          ),
        ),
      ),
    );
  }
}
