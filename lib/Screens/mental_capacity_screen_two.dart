import 'package:arcemployee/Screens/last_row_screens/last_row_metal_capacity_screen.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/CustomBlackAndGreenButton.dart';
import '../Widgets_Components/bottom_widget_container.dart';
import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_grey_textformfield.dart';
import '../Widgets_Components/icon_name_flag_container.dart';
import '../Widgets_Components/tovisitback.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import 'last_row_screens/last_row_make_bed_screen.dart';

class MentalCapacityScreenTwo extends StatefulWidget {
  const MentalCapacityScreenTwo({Key? key}) : super(key: key);

  @override
  State<MentalCapacityScreenTwo> createState() =>
      _MentalCapacityScreenTwoState();
}

class _MentalCapacityScreenTwoState extends State<MentalCapacityScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85.h,
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            CustomBackButtonToVisit(
              onpress: () {
                Get.to(() => LastRowMentalCapacityScreen());
              },
            ),
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 60.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    boxShadow: [ColorUtils().softShadow],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: FlagContainerWidget(
                    svgURI: 'assets/icons/makebedicon.svg',
                    nameOfContainer: 'Make bed',
                  ),
                ),
                SizedBox(
                  height: 20.h,
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
                          style: FontUtils.kInstructionStyle,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate faucibus nunc, convallis lacinia ante vestibulum ac. Sed condimentum cursus varius. Proin massa dolor, aliquam ac libero sit amet, malesuada placerat nulla. Nulla scelerisque, sem sed tempor viverra, tellus nulla commodo nulla, id vestibulum ligula quam nec dui. '),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          child: Text('LA'),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text('Lydia Aminoff'),
                                Text(
                                  'Just now',
                                  style: FontUtils.ksmallstyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    ListTile(
                      title: Transform.translate(
                        offset: Offset(32, -30),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/tickgreen.svg'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Market as Complete',
                              style: FontUtils.kmediumblackstyle,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          BottomWidgetArrow()
        ],
      ),
    );
  }
}

class CustomGreyTextFormFieldMental extends StatelessWidget {
  String? hintText;
  String? prefixText;
  CustomGreyTextFormFieldMental({required this.hintText, this.prefixText});
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
                color: Color(0xffABABAB),
              ),
            ),
            prefix: Text(prefixText ?? ""),
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
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
