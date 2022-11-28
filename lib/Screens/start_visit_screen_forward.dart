import 'package:arcemployee/Screens/mood_record_screen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/adcalstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/applymoisturestartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/bodywashstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/coldmealstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/docustatestartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/dressingstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/fluidstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/hotmealstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/makebedstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/manualhadnlingscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/mentalcapacitystartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/metforminstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/moodrecordstartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/skinintegritystartscreen.dart';
import 'package:arcemployee/Screens/plannedActivitiesScreenStartVisit/washingupstartscreen.dart';
import 'package:arcemployee/Screens/conatins_start_visit_screen_data.dart';
import 'package:arcemployee/Screens/previous_and_later_visits.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../Widgets_Components/borderlessTextField.dart';
import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_button.dart';
import '../Widgets_Components/custom_small_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import '../utils/image_utils.dart';
import 'add_visit_note_screen.dart';
import 'body_map_screen.dart';
import 'body_map_screen_start_without_form.dart';
import 'client_visit_note_screens.dart';
import 'clients_records.dart';
import 'end_visit_screen.dart';
import 'financial_transcation_sheet.dart';
import 'full_image_screen.dart';
import 'location_screen.dart';

/////////////////////////////////
////////////////////////////////
///////////////////////////////
//STARTVISITSCREEN
/////////////////////////////
/////////////////////////////

final _pagesStartScreen = [
  ManualHandlingScreenStart(),
  BodyWashStartScreen(),
  SkinIntegrityStartScreen(),
  ApplyMoistureStartScreen(),
  DressingStartScreen(),
  ColdMealStartScreen(),
  HotMealStartScreen(),
  FluidStartScreen(),
  MoodRecordStartScreen(),
  WashingUpStartScreen(),
  MakeBedStartScreen(),
  MentalCapacityStartScreen(),
  AdcalStartingScreen(),
  DocustateStartScreen(),
  MetforminStartScreen(),
];

class StartVisitForwardScreen extends StatefulWidget {
  const StartVisitForwardScreen({Key? key}) : super(key: key);

  @override
  State<StartVisitForwardScreen> createState() =>
      _StartVisitForwardScreenState();
}

class _StartVisitForwardScreenState extends State<StartVisitForwardScreen> {
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
                                            radius: 22,
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
                                      Divider(
                                        thickness: 1,
                                      ),
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
                                      Divider(
                                        thickness: 1,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(
                                            () => PreviousAndLaterVisits(),
                                          );
                                        },
                                        child: Row(
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
                                                  "Previous & Late Visits",
                                                  style: FontUtils.kstyle,
                                                ),
                                              ],
                                            ),
                                            SvgPicture.asset(
                                                'assets/pngs/forward_icon.svg'),
                                          ],
                                        ),
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
                                          SizedBox(
                                            width: 10.w,
                                          ),
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
                              child: InkWell(
                                onTap: () {
                                  Get.to(
                                    () => _pagesStartScreen[index],
                                  );
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
                              SvgPicture.asset(
                                "assets/pngs/forward_icon.svg",
                                height: 20.h,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(
                              () => BodyMapScreenWithoutForm(),
                            );
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
                                    Text(
                                      'Body Map',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                SvgPicture.asset(
                                  "assets/pngs/forward_icon.svg",
                                  height: 20.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
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
                          child: InkWell(
                            onTap: () {
                              Get.to(
                                () => ClientsRecord(),
                              );
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
                        onPress: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Center(
                                  child: Text(
                                'Why you want to cancel visit?',
                                style: FontUtils.kextralargestyle,
                              )),
                              content: Container(
                                height: 280.h,
                                width: 274.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 170.h,
                                      width: 305.w,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFCFCFC),
                                        boxShadow: [ColorUtils().softShadow],
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(),
                                      ),
                                      child: CustomGreyTextFormFieldBorderLess(
                                        hintText: 'Type here...',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    InkWell(
                                      onTap: () => Get.back(),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Cancel',
                                            style: FontUtils.kInstructionGrey,
                                          ),
                                          SizedBox(
                                            width: 60.w,
                                          ),
                                          Text(
                                            "Send",
                                            style: FontUtils.kInstructionRed,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CustomSmallButton(
                        txt: 'Start Visit',
                        color: Color(0xffAF1F25),
                        txtcolor: Colors.white,
                        onPress: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Select check-in method'),
                              content: Container(
                                height: 260.h,
                                width: 274.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.to(() => FullImageScreen());
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        height: 84.h,
                                        width: 274,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [ColorUtils().softShadow],
                                          border: Border.all(
                                            color: Color(0xffCACACA),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/qrcode.svg",
                                              height: 40.h,
                                              width: 40.w,
                                            ),
                                            SizedBox(
                                              width: 15.w,
                                            ),
                                            Text(
                                              "Scan QR Code",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: Column(
                                              children: [
                                                Container(
                                                  height: 230.h,
                                                  width: 230.w,
                                                  color: Colors.white,
                                                  child: Lottie.asset(
                                                      'assets/icons/greencheck.json',
                                                      repeat: false),
                                                ),
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                Text(
                                                  "Success! Visit has now started",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                        Future.delayed(
                                          Duration(seconds: 4),
                                          () {
                                            Get.to(() => EndVisitScreen());
                                          },
                                        );
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        height: 84.h,
                                        width: 274,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [ColorUtils().softShadow],
                                          border: Border.all(
                                            color: Color(0xffCACACA),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                                "assets/icons/manualphone.svg"),
                                            SizedBox(
                                              width: 15.w,
                                            ),
                                            Text(
                                              "Manual",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          color: Color(0xffCACACA),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
