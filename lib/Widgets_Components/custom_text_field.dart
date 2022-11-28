import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  String? prefixText;
  CustomTextField({required this.hintText, this.prefixText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: Get.width,
      child: TextFormField(
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
            fillColor: ColorUtils.whiteColor,
            filled: true,
            focusColor: ColorUtils.redcolor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: ColorUtils.darkgrey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xffDEDEDE),
              ),
            ),
            prefix: Text(prefixText ?? ""),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffC8C8C8),
              fontFamily: FontUtils.Poppinsnormal,
            ),
            prefixStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorUtils.blackColor,
              fontFamily: FontUtils.Poppinsnormal,
            )),
      ),
    );
  }
}
