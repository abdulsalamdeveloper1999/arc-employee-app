import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class PoliciesScreen extends StatefulWidget {
  const PoliciesScreen({Key? key}) : super(key: key);

  @override
  State<PoliciesScreen> createState() => _PoliciesScreenState();
}

class _PoliciesScreenState extends State<PoliciesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 85.h,
        elevation: 0,
        backgroundColor: ColorUtils.whiteColor,
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Policies & Procedures",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: ColorUtils.redcolor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 550.h,
              width: 525.w,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Document Name',
                      style: TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Suspendisse nulla augue, malesuada sit amet placerat vitae, efficitur ac enim. In scelerisque neque vel eros sodales tempor.\nVestibulum non leo quam. Proin eget nisi et ligula semper aliquam. Integer euismod felis nec commodo pellentesque. Lorem ipsum dolor sit amet, consectetur adipiscing elit\n\nSuspendisse nulla augue, malesuada sit amet placerat vitae, efficitur ac enim. In scelerisque neque vel eros sodales tempor.\nVestibulum non leo quam. Proin eget nisi et ligula semper aliquam. Integer euismod felis nec commodo pellentesque Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla augue, malesuada sit amet placerat vitae, efficitur ac enim. In scelerisque neque vel eros sodales tempor.\n Vestibulum non leo quam. Proin eget nisi et ligula semper aliquam. Integer euismod felis nec commodo pellentesque. Vestibulum non leo quam. Proin eget nisi et ligula semper aliquam. Integer euismod felis nec commodo pellentesque. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 160.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: ColorUtils.redcolor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(
                            0,
                            4,
                          ), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Decline',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: ColorUtils.redcolor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 160.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: ColorUtils.redcolor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(
                            0,
                            4,
                          ), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Accept',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
