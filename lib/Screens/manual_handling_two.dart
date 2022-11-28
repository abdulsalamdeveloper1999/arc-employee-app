import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/tovisitback.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import 'last_row_screens/last_row_manual_handling.dart';

class ManualHandlingTwo extends StatefulWidget {
  const ManualHandlingTwo({Key? key}) : super(key: key);

  @override
  State<ManualHandlingTwo> createState() => _ManualHandlingTwoState();
}

class _ManualHandlingTwoState extends State<ManualHandlingTwo> {
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
              Get.to(
                () => LastRowManualHandlingScreen(),
              );
            }),
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
                        Text(
                          'INSTRUCTIONS',
                          style: FontUtils.kInstructionStyle,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.Morbi vulputate faucibus nunc, convallis lacinia ante vestibulum ac. Sed condimentum cursus varius. Proin massa dolor, aliquam ac libero sit amet, malesuada placerat nulla. Nulla scelerisque, sem sed tempor viverra, tellus nulla commodo nulla, id vestibulum ligula quam nec dui.'),
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
                      leading: SvgPicture.asset('assets/icons/tickgreen.svg'),
                      title: Transform.translate(
                        offset: Offset(-30, 0),
                        child: Text(
                          'Market as Complete',
                          style: FontUtils.kmediumblackstyle,
                        ),
                      ),
                    )
                  ],
                )
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
