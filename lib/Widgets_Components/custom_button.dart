import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  VoidCallback onPress;
  CustomButton({required this.buttonText, required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 335.w,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorUtils.redcolor),
          shadowColor: MaterialStateProperty.all<Color>(
            Colors.red.withOpacity(0.5),
          ),
          elevation: MaterialStateProperty.all(7),
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
