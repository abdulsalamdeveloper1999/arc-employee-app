import 'package:arcemployee/Screens/add_visit_note_screen.dart';
import 'package:arcemployee/Screens/apply_moisture_screen.dart';
import 'package:arcemployee/Screens/body_map_screen.dart';
import 'package:arcemployee/Screens/body_wash.dart';
import 'package:arcemployee/Screens/client_visit_note_screens.dart';
import 'package:arcemployee/Screens/clients_records.dart';
import 'package:arcemployee/Screens/cold_metal_screen.dart';
import 'package:arcemployee/Screens/docusate_screen.dart';
import 'package:arcemployee/Screens/dressing_screen.dart';
import 'package:arcemployee/Screens/financial_transcation_sheet.dart';
import 'package:arcemployee/Screens/fluid_screen.dart';
import 'package:arcemployee/Screens/hot_meal_screen.dart';
import 'package:arcemployee/Screens/location_screen.dart';
import 'package:arcemployee/Screens/make_bed_screen.dart';
import 'package:arcemployee/Screens/manual_handling_screen.dart';
import 'package:arcemployee/Screens/mental_capacity_status_screen.dart';
import 'package:arcemployee/Screens/metformin_screen.dart';
import 'package:arcemployee/Screens/mood_record_screen.dart';
import 'package:arcemployee/Screens/skin_integrity_screen.dart';
import 'package:arcemployee/Screens/washing_up_screen.dart';
import 'package:arcemployee/Widgets_Components/custom_small_button.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../home.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import '../utils/image_utils.dart';
import 'adcal_d3_screen.dart';

List icon = [
  'assets/pngs/manualHandling.svg',
  'assets/pngs/bodywash.svg',
  'assets/pngs/skinIntegrity.svg',
  'assets/icons/applymoistureicon.svg',
  'assets/icons/dressingicon.svg',
  'assets/icons/coldmealicon.svg',
  'assets/icons/hotmealicon.svg',
  'assets/icons/fluid.svg',
  'assets/icons/mood_icon.svg',
  'assets/icons/washingupicon.svg',
  'assets/icons/makebedicon.svg',
  'assets/icons/mentalcapacitystatus.svg',
  'assets/icons/adcalicon.svg',
  'assets/icons/docusateicon.svg',
  'assets/icons/metformin.svg',
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

class ConatinsStartVisitScreenData extends StatefulWidget {
  const ConatinsStartVisitScreenData({Key? key}) : super(key: key);

  @override
  State<ConatinsStartVisitScreenData> createState() =>
      _ConatinsStartVisitScreenDataState();
}

class _ConatinsStartVisitScreenDataState
    extends State<ConatinsStartVisitScreenData> {
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
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 19.0, right: 19),
                child: Column(
                  children: [
                    Column(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.teal,
                                            radius: 29,
                                            child: Text(
                                              'LA',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.sp),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Service user 1',
                                                style:
                                                    FontUtils.kextralargestyle,
                                              ),
                                              Text(
                                                'Visit 45 mins',
                                                style: FontUtils.ksmallstyle,
                                              )
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
                                              SvgPicture.asset(
                                                  ImageUtils.watch),
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
                                          InkWell(
                                            onTap: () {
                                              Get.to(() => LocationScreen());
                                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                            },
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                    ImageUtils.map),
                                                SizedBox(
                                                  width: 12.w,
                                                ),
                                                Text(
                                                  "1301 Stratford Road B28 9HH",
                                                  style: FontUtils.kstyle,
                                                ),
                                              ],
                                            ),
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
                                          InkWell(
                                            onTap: () {
                                              Get.to(() =>
                                                  ClientVisitNoteScreen());
                                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                            },
                                            child: Row(
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
                                          InkWell(
                                            onTap: () {
                                              Get.to(
                                                  () => AddVisitNoteScreen());
                                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                            },
                                            child: Row(
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
                                          ),
                                          SvgPicture.asset(
                                              'assets/pngs/forward_icon.svg'),
                                        ],
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
                        Container(
                          width: 335.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [ColorUtils().softShadow],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, right: 15, left: 15, bottom: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/watch.svg'),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text('Travel time : 15 min')
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/locationdouble.svg'),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text('Travel distance : 1 mile')
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/tick.svg'),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text('0/4 Task Complete')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text('Planned Activities'),
                        ///////////////////////////////////////////
                        ///////////////////////////////////////////////////////////////////////////
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: namingText.length,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 10.0),
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
                                ///////////////////////////////////////
                                //////////////////////////////////////
                                //OnTapHere
                                //////////////////////////////////////
                                /////////////////////////////////////
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => pagesPlannedActivities[index]);
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            icon[index],
                                            height: 20.h,
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            namingText[index],
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontFamily:
                                                    FontUtils.Poppinsnormal),
                                          ),
                                        ],
                                      ),
                                      SvgPicture.asset(
                                          "assets/pngs/forward_icon.svg",
                                          height: 20.h),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Forms',
                            style: FontUtils.klargestyle,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => FinancialTransactionSheet());
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
                            ///////////////////////////////////////
                            //////////////////////////////////////
                            //OnTapHere
                            //////////////////////////////////////
                            /////////////////////////////////////
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Financial Transaction Sheet',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: FontUtils.Poppinsnormal),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset("assets/pngs/forward_icon.svg",
                                    height: 20.h),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        InkWell(
                          onTap: () {
                            Get.to(() => BodyMapScreen());
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
                            ///////////////////////////////////////
                            //////////////////////////////////////
                            //OnTapHere
                            //////////////////////////////////////
                            /////////////////////////////////////
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Body Map',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: FontUtils.Poppinsnormal),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset("assets/pngs/forward_icon.svg",
                                    height: 20.h),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Associated Case',
                            style: FontUtils.klargestyle,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
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
                          ///////////////////////////////////////
                          //////////////////////////////////////
                          //OnTapHere
                          //////////////////////////////////////
                          /////////////////////////////////////
                          child: InkWell(
                            onTap: () {
                              Get.to(() => ClientsRecord());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Alfredo Culhane -',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: FontUtils.Poppinsnormal),
                                    ),
                                    Text(
                                      'Service User Records',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: FontUtils.Poppinsnormal),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset("assets/pngs/forward_icon.svg",
                                    height: 20.h),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomSmallButton(
                        txt: 'Cancel Visit',
                        color: Colors.white,
                        txtcolor: Color(0xffAF1F25),
                        onPress: () {},
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CustomSmallButton(
                        txt: 'Start Visit',
                        color: Color(0xffAF1F25),
                        txtcolor: Colors.white,
                        onPress: () {},
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
