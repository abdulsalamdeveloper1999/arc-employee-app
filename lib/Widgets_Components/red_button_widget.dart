import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color_utils.dart';

class RedButtonWidget extends StatelessWidget {
  final String buttonText;

  const RedButtonWidget({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.w,
      height: 55.h,
      decoration: BoxDecoration(
        color: ColorUtils.redcolor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [ColorUtils().softShadow],
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,
              color: Colors.white),
        ),
      ),
    );
  }
}

class DetailTextWiget extends StatelessWidget {
  final String leftSideTxt;
  final String rightSideTxt;

  const DetailTextWiget({
    Key? key,
    required this.leftSideTxt,
    required this.rightSideTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftSideTxt,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        Text(
          rightSideTxt,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
