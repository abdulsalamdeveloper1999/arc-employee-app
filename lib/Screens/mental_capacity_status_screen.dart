import 'package:arcemployee/Screens/mental_capacity_screen_two.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/CustomBlackAndGreenButton.dart';
import '../Widgets_Components/bottom_widget_container.dart';
import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_grey_textformfield.dart';
import '../Widgets_Components/custom_text_field.dart';
import '../Widgets_Components/icon_name_flag_container.dart';
import '../Widgets_Components/skin_intregrity_text_field.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class MentalCapactyStatusScreen extends StatefulWidget {
  const MentalCapactyStatusScreen({Key? key}) : super(key: key);

  @override
  State<MentalCapactyStatusScreen> createState() =>
      _MentalCapactyStatusScreenState();
}

class _MentalCapactyStatusScreenState extends State<MentalCapactyStatusScreen> {
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
                    svgURI: 'assets/icons/mentalcapacitystatus.svg',
                    nameOfContainer: 'Mental Capacity Status',
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
                        Text('Please Specify:'),
                        SizedBox(height: 15.h),
                        CustomGreyTextFormField(
                          hintText: 'Full Capacity',
                        ),
                        SizedBox(height: 15.h),
                        CustomGreyTextFormField(
                          hintText: 'Partial Capacity',
                        ),
                        SizedBox(height: 15.h),
                        CustomGreyTextFormField(
                          hintText: 'Under Assessment',
                        ),
                        SizedBox(height: 15.h),
                        CustomGreyTextFormField(
                          hintText: 'Power of Attorneys',
                        ),
                        SizedBox(height: 15.h),
                        CustomGreyTextFormField(
                          hintText: 'Advocate',
                        ),
                        SizedBox(height: 15.h),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              BlackBorderButton(
                                onPress: () {},
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              GreenBorderButton(
                                onPress: () {
                                  Get.to(() => MentalCapacityScreenTwo());
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
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
