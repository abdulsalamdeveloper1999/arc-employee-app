import 'package:arcemployee/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w),
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Row(
          children: [
            SvgPicture.asset(ImageUtils.lessblack),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "Back",
              style: TextStyle(
                  fontFamily: FontUtils.Poppinsnormal,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorUtils.blackColor),
            )
          ],
        ),
      ),
    );
  }
}
