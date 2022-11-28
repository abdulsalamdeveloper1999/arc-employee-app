import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widgets_Components/custom_back_button.dart';
import '../../Widgets_Components/custom_button.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../../utils/image_utils.dart';
import '../../visit.dart';
import '../end_visit_screen.dart';
import '../starting_visit_screen.dart';
import '../../visit.dart';
import '../adcal_d3_screen.dart';
import '../apply_moisture_screen.dart';
import '../body_wash.dart';
import '../cold_metal_screen.dart';
import '../docusate_screen.dart';
import '../dressing_screen.dart';
import '../fluid_screen.dart';
import '../hot_meal_screen.dart';
import '../make_bed_screen.dart';
import '../manual_handling_screen.dart';
import '../mental_capacity_status_screen.dart';
import '../metformin_screen.dart';
import '../mood_record_screen.dart';
import '../skin_integrity_screen.dart';
import '../starting_visit_screen.dart';
import '../washing_up_screen.dart';

final pagesPlannedActivities = [
  ManualHnadlingScreen(),
  BodyWashScreen(),
  SkinIntegrity(),
  ApplyMoistureScreen(),
  DressingScreen(),
  ColdMealScreen(),
  HotMealScreen(),
  FluidScreen(),
  MoodRecordScreen(),
  WashingUpScreen(),
  MakeBedScreen(),
  MentalCapactyStatusScreen(),
  AdcalScreen(),
  DocusateScreen(),
  MetforminScreen(),
];
List namingText = [
  'Manual Handling',
  'Body Wash',
  'Skin Integrity',
  'Apply moisture',
  'Dressing',
  'Cold Meal',
  'Hot Meal',
  'Fluid',
  'Mood Record',
  'Washing Up',
  'Make Bed',
  'Mental Capacity Status',
  'Adcal-D3',
  'Dcousate',
  'Metform'
];

class LastRowHotMealScreen extends StatefulWidget {
  const LastRowHotMealScreen({Key? key}) : super(key: key);

  @override
  State<LastRowHotMealScreen> createState() => _LastRowHotMealScreenState();
}

class _LastRowHotMealScreenState extends State<LastRowHotMealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
                      width: 335.w,
                      // height: 220.h,
                      decoration: BoxDecoration(
                        color: ColorUtils.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [ColorUtils().softShadow],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, left: 15, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Visit 45 mins with',
                                          style: FontUtils.klargestyle,
                                        ),
                                        Text(
                                          'Alfredo Culhane',
                                          style: FontUtils.kextralargestyle,
                                        ),
                                        Text(
                                          'Keycode: SCSk565',
                                          style: FontUtils.ksmallblackstyle,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                // ListTile(
                                //   leading: CircleAvatar(
                                //     backgroundColor: Colors.teal,
                                //     maxRadius: 33,
                                //     child: Text(
                                //       'LA',
                                //       style: TextStyle(color: ColorUtils.whiteColor),
                                //     ),
                                //   ),
                                //   title: Transform.translate(
                                //     offset: Offset(-7, -2),
                                //     child: Text(
                                //       'Service user 1',
                                //       style: TextStyle(
                                //           fontFamily: FontUtils.Poppinsnormal,
                                //           fontSize: 16,
                                //           color: Color(0xff121212),
                                //           fontWeight: FontWeight.w500),
                                //     ),
                                //   ),
                                //   subtitle: Transform.translate(
                                //     offset: Offset(-6, 0),
                                //     child: Text(
                                //       'Visit 45 mints',
                                //       style: TextStyle(
                                //         fontFamily: FontUtils.Poppinsnormal,
                                //         fontSize: 12.sp,
                                //         fontWeight: FontWeight.w400,
                                //         color: Color(0xff121212),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                // Divider(
                                //   color: ColorUtils.dividerColor,
                                //   thickness: 1.5,
                                //   indent: 10,
                                //   endIndent: 10,
                                // ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(ImageUtils.watch),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          "10 May 2022 09:45-10:30",
                                          style: FontUtils.kstyle,
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                        'assets/pngs/forward_icon.svg'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 10.w,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(ImageUtils.map),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          "1301 Stratford Road B28 9HH",
                                          style: FontUtils.kstyle,
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                        'assets/pngs/forward_icon.svg'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/rewatch.svg'),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          "Travel time : 15 min",
                                          style: FontUtils.kstyle,
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                        'assets/pngs/forward_icon.svg'),
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/Vector.svg'),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          "Client Visit Note",
                                          style: FontUtils.kstyle,
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                        'assets/pngs/forward_icon.svg'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/Vector.svg'),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text(
                                          "Add Visit Note",
                                          style: FontUtils.kstyle,
                                        ),
                                      ],
                                    ),
                                    SvgPicture.asset(
                                        'assets/pngs/forward_icon.svg'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomButton(
                                  buttonText: 'End Visit',
                                  onPress: () {
                                    Get.to(() => Visit());
                                  },
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    ///////////////
                                    //image reverse watch
                                    ///////////////
                                    SizedBox(
                                      width: 10.w,
                                    ),

                                    //////////////image icon image
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Planned Activities'),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: iconStartingVisitScreen.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => pagesPlannedActivities[index]);
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                            ),
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: ColorUtils.whiteColor,
                              boxShadow: [ColorUtils().softShadow],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      iconEndVisitScreen[index],
                                      height: 20.h,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      nameEndVistScreen[index],
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: FontUtils.Poppinsnormal),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(index <= 6
                                    ? 'assets/icons/tickgreen.svg'
                                    : "assets/icons/forward.svg")
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  )
                ],
              ),
            ),
            // Container(
            //   height: 89,
            //   color: Colors.white,
            //   width: double.infinity,
            //   child: Padding(
            //     padding: const EdgeInsets.only(
            //         top: 14.0, left: 20, right: 20, bottom: 20),
            //     child: CustomButton(
            //       buttonText: 'End Visit',
            //       onPress: () {},
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
