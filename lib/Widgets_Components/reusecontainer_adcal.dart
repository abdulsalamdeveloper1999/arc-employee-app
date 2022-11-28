import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/font_utils.dart';

class ReuseContainerAdcal extends StatelessWidget {
  final String lefttext;
  final String righttext;

  const ReuseContainerAdcal({
    Key? key,
    required this.lefttext,
    required this.righttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.w,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              lefttext,
              style: FontUtils.kleftAcal,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              righttext,
              style: FontUtils.krightAcal,
            )
          ],
        ),
      ),
    );
  }
}
