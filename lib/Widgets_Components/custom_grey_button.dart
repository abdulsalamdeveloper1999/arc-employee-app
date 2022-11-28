import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class CustomGreyButton extends StatelessWidget {
  String buttonText;
  VoidCallback onPress;
  CustomGreyButton({required this.buttonText, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: Get.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xffE5E5E5)),
          shadowColor: MaterialStateProperty.all<Color>(Colors.black),
          elevation: MaterialStateProperty.all(5),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        onPressed: onPress,
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: FontUtils.Poppinsnormal),
        ),
      ),
    );
  }
}
