import 'package:arcemployee/Screens/washing_up_screen_two.dart';
import 'package:arcemployee/Widgets_Components/bottom_widget_container.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/CustomBlackAndGreenButton.dart';
import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/icon_name_flag_container.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class WashingUpScreen extends StatefulWidget {
  const WashingUpScreen({Key? key}) : super(key: key);

  @override
  State<WashingUpScreen> createState() => _WashingUpScreenState();
}

class _WashingUpScreenState extends State<WashingUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    svgURI: 'assets/icons/washingupicon.svg',
                    nameOfContainer: 'Washing Up',
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            children: [
                              BlackBorderButton(
                                onPress: () {},
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              GreenBorderButton(onPress: () {
                                Get.to(() => WashingUpScreenTwo());
                              }),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
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
