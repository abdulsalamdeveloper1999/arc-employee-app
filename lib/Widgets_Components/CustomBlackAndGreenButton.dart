import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/font_utils.dart';

class BlackBorderButton extends StatelessWidget {
  final onPress;

  const BlackBorderButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 45.h,
        width: 145.w,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xff373737),
          ),
        ),
        child: Center(
          child: Text(
            'Not Completed',
            style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class GreenBorderButton extends StatelessWidget {
  final onPress;

  const GreenBorderButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 45.h,
        width: 145.w,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff00C58A),
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color(0xff00C58A),
            ),
            shape: BoxShape.rectangle),
        child: Center(
          child: Text(
            ' Completed',
            style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
