import 'package:arcemployee/utils/color_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/font_utils.dart';

class CustomSmallButton extends StatelessWidget {
  final txt;
  final color;
  final txtcolor;
  VoidCallback onPress;
  CustomSmallButton(
      {Key? key,
      required this.txt,
      required this.color,
      required this.txtcolor,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width: 1.0,
          color: Color(0xffAF1F25),
        ),
        backgroundColor: color,
        fixedSize: const Size(155, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        txt,
        style: TextStyle(
            color: txtcolor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            fontFamily: FontUtils.Poppinsnormal),
      ),
    );
  }
}
