import 'package:arcemployee/Screens/manual_handling_two.dart';
import 'package:arcemployee/Widgets_Components/CustomBlackAndGreenButton.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widgets_Components/custom_back_button.dart';

class ManualHandlingScreenStart extends StatefulWidget {
  const ManualHandlingScreenStart({Key? key}) : super(key: key);

  @override
  State<ManualHandlingScreenStart> createState() =>
      _ManualHandlingScreenStartState();
}

class _ManualHandlingScreenStartState extends State<ManualHandlingScreenStart> {
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/pngs/manualHandling.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Manual Handling',
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
                        SizedBox(height: 10.h),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.Morbi vulputate faucibus nunc, convallis lacinia ante vestibulum ac. Sed condimentum cursus varius. Proin massa dolor, aliquam ac libero sit amet, malesuada placerat nulla. Nulla scelerisque, sem sed tempor viverra, tellus nulla commodo nulla, id vestibulum ligula quam nec dui.'),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Spacer(),
          // Container(
          //   padding: const EdgeInsets.only(left: 20.0, right: 23),
          //   height: 65.h,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Row(
          //         children: [
          //           Text(
          //             'Add Comment....',
          //             style: TextStyle(
          //               fontFamily: FontUtils.Poppinsnormal,
          //               fontSize: 12.sp,
          //               fontWeight: FontWeight.w400,
          //               color: Color(0xffABABAB),
          //             ),
          //           ),
          //         ],
          //       ),
          //       SvgPicture.asset('assets/pngs/forwardred.svg')
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
