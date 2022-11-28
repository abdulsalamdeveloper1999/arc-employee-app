import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_button.dart';
import '../Widgets_Components/custom_text_field.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class CarExpiryScreen extends StatefulWidget {
  const CarExpiryScreen({Key? key}) : super(key: key);

  @override
  State<CarExpiryScreen> createState() => _CarExpiryScreenState();
}

class _CarExpiryScreenState extends State<CarExpiryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85.h,
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            CustomBackButton(),
          ],
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/images/ArchitectureLogo1.png',
          height: 50,
          width: 60.w,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Car / Business Insurance Expiry Date',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFieldNew(
                  hintText: '09-June-2022',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffEF6907),
                    fontFamily: FontUtils.Poppinsnormal,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/eye_icon.svg'),
                  SizedBox(
                    width: 5.h,
                  ),
                  Text(
                    'View Document',
                    style: FontUtils.kmediumstyle,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'DBS Expiry Date',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFieldNew(
                  hintText: '09-June-2022',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffAF1F25),
                    fontFamily: FontUtils.Poppinsnormal,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/eye_icon.svg'),
                  SizedBox(
                    width: 5.h,
                  ),
                  Text(
                    'View Document',
                    style: FontUtils.kmediumstyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFieldNew extends StatelessWidget {
  String? hintText;
  String? prefixText;
  final style;

  CustomTextFieldNew(
      {required this.hintText, this.prefixText, required this.style});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: Get.width,
      child: TextFormField(
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
            fillColor: ColorUtils.whiteColor,
            filled: true,
            focusColor: ColorUtils.redcolor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: ColorUtils.darkgrey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xffDEDEDE),
              ),
            ),
            prefix: Text(prefixText ?? ""),
            hintText: hintText,
            hintStyle: style,
            prefixStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xffC8C8C8),
              fontFamily: FontUtils.Poppinsnormal,
            )),
      ),
    );
  }
}
