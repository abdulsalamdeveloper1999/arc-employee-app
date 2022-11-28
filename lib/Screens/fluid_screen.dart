import 'package:arcemployee/Screens/fluid_screen_two.dart';
import 'package:arcemployee/Screens/skin_integrity_screen.dart';
import 'package:arcemployee/Widgets_Components/CustomBlackAndGreenButton.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/bottom_widget_container.dart';
import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/skin_intregrity_text_field.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class FluidScreen extends StatefulWidget {
  const FluidScreen({Key? key}) : super(key: key);

  @override
  State<FluidScreen> createState() => _FluidScreenState();
}

class _FluidScreenState extends State<FluidScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: Column(
              children: [
                Container(
                  height: 60.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    boxShadow: [ColorUtils().softShadow],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/pngs/skinIntegrity.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Fluid',
                                style: FontUtils.kmediumblackstyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 17.0),
                        child: SvgPicture.asset(
                          'assets/pngs/flagicon.svg',
                          height: 26.h,
                          width: 26.w,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    boxShadow: [ColorUtils().softShadow],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'INSTRUCTIONS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                            'Pleaase prepare a bowl of cornflakes for me, I like a sprinkle of sugar on top.'),
                        Row(
                          children: [
                            Text('\n\nFood Allergies :'),
                            Text(
                              '\n\nPeanuts',
                              style: TextStyle(color: ColorUtils.redcolor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Water',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Hot Drink',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Juice',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomButtonFluid(
                          hintText: 'Enter amount of drink ml',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            children: [
                              BlackBorderButton(onPress: () {}),
                              SizedBox(
                                width: 10.w,
                              ),
                              GreenBorderButton(
                                onPress: () {
                                  Get.to(
                                    () => FluidScreenTwo(),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          BottomWidgetArrow(),
        ],
      ),
    );
  }
}

class CustomButtonFluid extends StatelessWidget {
  String? hintText;
  String? prefixText;
  CustomButtonFluid({required this.hintText, this.prefixText});
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
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            prefix: Text(prefixText ?? ""),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xffC2C2C2),
              fontFamily: FontUtils.Poppinsnormal,
            ),
            prefixStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorUtils.blackColor,
              fontFamily: FontUtils.Poppinsnormal,
            )),
      ),
    );
  }
}
