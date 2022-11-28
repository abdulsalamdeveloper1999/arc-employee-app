import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widgets_Components/custom_back_button.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../hot_meal_screen_two.dart';

class HotMealStartScreen extends StatefulWidget {
  const HotMealStartScreen({Key? key}) : super(key: key);

  @override
  State<HotMealStartScreen> createState() => _HotMealStartScreenState();
}

class _HotMealStartScreenState extends State<HotMealStartScreen> {
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
                              SvgPicture.asset('assets/icons/hotmealicon.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Hot Meal',
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
                            'Pleaase make me a hard boiled egg. I like is served with some salt.'),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Spacer(),
          // Container(
          //   height: 65.h,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 20.0, right: 23),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           children: [
          //             Text(
          //               'Add Comment....',
          //               style: TextStyle(
          //                 fontFamily: FontUtils.Poppinsnormal,
          //                 fontSize: 12.sp,
          //                 fontWeight: FontWeight.w400,
          //                 color: Color(0xffABABAB),
          //               ),
          //             ),
          //           ],
          //         ),
          //         SvgPicture.asset('assets/pngs/forwardred.svg')
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
