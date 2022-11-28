import 'package:arcemployee/Screens/last_row_screens/last_row_adcal_screen.dart';
import 'package:arcemployee/Screens/last_row_screens/last_row_docusate_screen.dart';
import 'package:arcemployee/Widgets_Components/tovisitback.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/CustomBlackAndGreenButton.dart';
import '../Widgets_Components/bottom_widget_container.dart';
import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/reusecontainer_adcal.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class AdcalD3ScreenTwo extends StatefulWidget {
  const AdcalD3ScreenTwo({Key? key}) : super(key: key);

  @override
  State<AdcalD3ScreenTwo> createState() => _AdcalD3ScreenTwoState();
}

class _AdcalD3ScreenTwoState extends State<AdcalD3ScreenTwo> {
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
                Get.to(() => LastRowAdcalScreen());
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
                              SvgPicture.asset('assets/icons/adcalicon.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Adcal-D3',
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
                        Text('Suck or chew this medication'),
                        SizedBox(
                          height: 15.h,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        ReuseContainerAdcal(
                          lefttext: 'Dosage',
                          righttext: '1 Tablet, Twiice Daily',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        ReuseContainerAdcal(
                          lefttext: 'Date Range',
                          righttext: '5 May 2022-5 Aug 2022',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        ReuseContainerAdcal(
                          lefttext: 'Days',
                          righttext: 'Mon, Tue, Wed, Thu, Fri, Sat,\nSun',
                        ),
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
          BottomWidgetArrow(),
        ],
      ),
    );
  }
}
