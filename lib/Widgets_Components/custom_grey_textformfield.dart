import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class CustomGreyTextFormField extends StatelessWidget {
  String? hintText;
  String? prefixText;
  CustomGreyTextFormField({required this.hintText, this.prefixText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: Get.width,
      decoration:
          BoxDecoration(border: Border.all(color: ColorUtils.greyColor)),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
            fillColor: ColorUtils.whiteColor,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: ColorUtils.greyColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Color(0xffABABAB),
              ),
            ),
            prefix: Text(prefixText ?? ""),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
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
