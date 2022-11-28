import 'package:arcemployee/Screens/body_wash_screen_two.dart';
import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class ColdMealActivityNotComplete extends StatefulWidget {
  const ColdMealActivityNotComplete({Key? key}) : super(key: key);

  @override
  State<ColdMealActivityNotComplete> createState() =>
      _ColdMealActivityNotCompleteState();
}

class _ColdMealActivityNotCompleteState
    extends State<ColdMealActivityNotComplete> {
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
      body: Padding(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/anc.svg'),
                          SizedBox(
                            width: 10.w,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Activity Not Complete-',
                                  style: FontUtils.kextralargestyle,
                                ),
                                Text(
                                  'Please Explain',
                                  style: FontUtils.kmediumblackstyle,
                                ),
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
                padding: const EdgeInsets.only(left: 15.0, top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Note',
                      style: FontUtils.kInstructionStyle,
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 335,
                      height: 155,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 1, bottom: 10),
                        child: TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: 'Type Here',
                            hintStyle: FontUtils.ksmallstyle,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: CustomButton(
                buttonText: 'Submit',
                onPress: () {
                  Get.to(() => BodyWashScreenTwo());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
