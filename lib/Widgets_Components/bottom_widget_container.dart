import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/font_utils.dart';

class BottomWidgetArrow extends StatelessWidget {
  const BottomWidgetArrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 23),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Add Comment....',
                  style: TextStyle(
                    fontFamily: FontUtils.Poppinsnormal,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffABABAB),
                  ),
                ),
              ],
            ),
            SvgPicture.asset('assets/pngs/forwardred.svg')
          ],
        ),
      ),
    );
  }
}
