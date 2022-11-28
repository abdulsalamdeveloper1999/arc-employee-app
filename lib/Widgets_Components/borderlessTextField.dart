import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class CustomGreyTextFormFieldBorderLess extends StatelessWidget {
  String? hintText;
  String? prefixText;
  CustomGreyTextFormFieldBorderLess({required this.hintText, this.prefixText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      height: 135.h,
      width: Get.width,
      child: TextFormField(
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
            border: InputBorder.none,
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
