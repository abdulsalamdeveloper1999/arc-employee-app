import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_button.dart';
import '../Widgets_Components/custom_text_field.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import 'my_document_screen.dart';

class UploadDocumentScreen extends StatefulWidget {
  const UploadDocumentScreen({Key? key}) : super(key: key);

  @override
  State<UploadDocumentScreen> createState() => _UploadDocumentScreenState();
}

class _UploadDocumentScreenState extends State<UploadDocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 85.h,
        elevation: 0,
        backgroundColor: ColorUtils.whiteColor,
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Cases",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: ColorUtils.redcolor),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TITLE",
                  style: TextStyle(
                    fontFamily: FontUtils.Poppinsnormal,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.blackColor,
                  ),
                ),
                SizedBox(height: 10.h),
                CustomTextField(hintText: "Type here...."),
                SizedBox(height: 15.h),
                Container(
                  height: 51.h,
                  decoration: BoxDecoration(
                      color: ColorUtils.whiteColor,
                      boxShadow: [ColorUtils().softShadow],
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/pngs/upload_icon.svg",
                          height: 18.h,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Upload Document",
                          style: TextStyle(
                            fontFamily: FontUtils.Poppinsnormal,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorUtils.blackColor,
                          ),
                        )
                      ]),
                )
              ],
            ),
            CustomButton(
              buttonText: 'Send',
              onPress: () {
                Get.back();
              },
            )
          ],
        ),
      ),
    );
  }
}
