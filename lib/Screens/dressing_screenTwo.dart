import 'package:arcemployee/Widgets_Components/tovisitback.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import 'last_row_screens/last_row_dressing_screen.dart';

class DressingScreenTwo extends StatefulWidget {
  const DressingScreenTwo({Key? key}) : super(key: key);

  @override
  State<DressingScreenTwo> createState() => _DressingScreenTwoState();
}

class _DressingScreenTwoState extends State<DressingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85.h,
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            CustomBackButtonToVisit(onpress: () {
              Get.to(() => LastRowDressingScreen());
            })
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
                                  'assets/icons/applymoistureicon.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Apply moisturiser',
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
                            'I am able to choose my own clothes, please support me in this. Ensure it suitable for the climate.'),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
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
          Container(
            height: 65.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Add Comment....',
                        style: TextStyle(
                          fontFamily: FontUtils.Poppinsnormal,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffABABAB),
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/pngs/forwardred.svg')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
