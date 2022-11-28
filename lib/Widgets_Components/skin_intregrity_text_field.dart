import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

bool click = true;

class CustomTextFieldSkinIntegrity extends StatefulWidget {
  String? hintText;
  String? prefixText;
  CustomTextFieldSkinIntegrity({required this.hintText, this.prefixText});

  @override
  State<CustomTextFieldSkinIntegrity> createState() =>
      _CustomTextFieldSkinIntegrityState();
}

class _CustomTextFieldSkinIntegrityState
    extends State<CustomTextFieldSkinIntegrity> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          click = !click;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50.h,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("${widget.hintText}"),
              ],
            ),
            Icon(
              Icons.check_circle,
              color: (click == false) ? Color(0xff00C58A) : Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
