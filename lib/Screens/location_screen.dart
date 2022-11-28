import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import '../utils/image_utils.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 85.h,
        elevation: 0,
        backgroundColor: ColorUtils.redcolor,
        leading: const CustomBackButtonLocation(),
        title: Text(
          "Location",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: ColorUtils.whiteColor),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/icons/mapframe.jpg'),
          ),
        ),
      ),
    );
  }
}

class CustomBackButtonLocation extends StatelessWidget {
  const CustomBackButtonLocation({Key? key}) : super(key: key);

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
            SvgPicture.asset('assets/icons/whitebackicon.svg'),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "Back",
              style: TextStyle(
                  fontFamily: FontUtils.Poppinsnormal,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorUtils.whiteColor),
            )
          ],
        ),
      ),
    );
  }
}
