import 'dart:core';

import 'package:arcemployee/Screens/add_bank_account_screen.dart';
import 'package:arcemployee/Screens/my_document_screen.dart';
import 'package:arcemployee/Screens/policies_and_procedure_screen.dart';
import 'package:arcemployee/Screens/profile_screen.dart';
import 'package:arcemployee/Screens/raise_a_concern_screen.dart';
import 'package:arcemployee/Screens/raise_a_support_ticket_screen.dart';
import 'package:arcemployee/Screens/rasie_a_support_textform_screen.dart';
import 'package:arcemployee/Screens/request_leave_or_absence_screen.dart';
import 'package:arcemployee/Screens/request_ppe_screen.dart';
import 'package:arcemployee/Screens/conatins_start_visit_screen_data.dart';
import 'package:arcemployee/Screens/rota_screen_to_setting.dart';
import 'package:arcemployee/Screens/upload_document_screen.dart';
import 'package:arcemployee/Screens/visit_history_screen.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:arcemployee/utils/image_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/borderlessTextField.dart';
import '../Widgets_Components/custom_grey_textformfield.dart';
import '../login.dart';
import 'emergency_alert_screen.dart';
import 'leave_job_screen.dart';

class SettingTwo extends StatefulWidget {
  const SettingTwo({Key? key}) : super(key: key);

  @override
  State<SettingTwo> createState() => _SettingTwoState();
}

class _SettingTwoState extends State<SettingTwo> {
  List pngsUri = [
    'assets/pngs/profile.png',
    'assets/pngs/rota.png',
    'assets/pngs/visit history.png',
    'assets/pngs/upload document.png',
    'assets/pngs/upload document.png',
    'assets/pngs/raise a concern.png',
    'assets/pngs/update bank details.png',
    'assets/pngs/policies & procedures.png',
    'assets/pngs/request PPE.png',
    'assets/pngs/Emergency alert.png',
    'assets/pngs/Raise a support ticket.png',
    'assets/pngs/custom forms.png',
    'assets/pngs/request leave or absence.png',
    'assets/pngs/logout.png',
  ];

  List stringNames = [
    'Profile',
    'Rota',
    'Visit History',
    'Upload Document',
    'Raise a concern',
    'Update bank details',
    'Policies & Procedures',
    'Request PPE',
    'Emergency alert',
    'Raise a support ticket',
    'Custom forms',
    'Request Leave or Absence',
    'Log Out'
  ];

  final Pages = [
    ProfileScreen(),
    RotaScreen(),
    VisitHistoryScreen(),
    MyDocumentScreen(),
    RaiseAConcern(),
    AddBankAccountScreen(),
    PoliciesAndProcedureScreen(),
    RequestPPEScreen(),
    EmergencyAlertScreen(),
    RaiseTicketScreen(),
    RaiseTicketScreen(),
    RequestLeaveOrAbsence(),
    Login(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        ///////////////
        //Appbar
        //////////////
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Row(
        //         children: [
        //           Icon(
        //             Icons.arrow_back_ios,
        //             color: Colors.black,
        //             size: 14,
        //           ),
        //           Text(
        //             'Back',
        //             style: TextStyle(color: Colors.black, fontSize: 12.sp),
        //           ),
        //         ],
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.only(right: 157),
        //         child: Image(
        //           alignment: Alignment.center,
        //           image: AssetImage('assets/images/ArchitectureLogo1.png'),
        //           fit: BoxFit.cover,
        //           height: 50.h,
        //           width: 60.w,
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        body: Column(
          children: [
            Container(
              height: 50.h,
              width: 375.w,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new),
                        Text(
                          'Back',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 157),
                    child: Image(
                      alignment: Alignment.center,
                      image: AssetImage('assets/images/ArchitectureLogo1.png'),
                      fit: BoxFit.cover,
                      height: 50.h,
                      width: 60.w,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: 640.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: pngsUri.length - 1,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          pngsUri[index],
                                          height: 18.h,
                                          width: 18.h,
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            if (index == 11) {
                                              RequestLeaveorAbsence();
                                            } else if (index == 8) {
                                              EmergencyAlert();
                                            } else {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Pages[index],
                                                ),
                                              );
                                            }
                                          },
                                          child: Text(
                                            stringNames[index],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 30,
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            ImageUtils.Pgreater,
                                            height: 14.h,
                                            width: 7.w,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.redcolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/pngs/messageIcon.png',
                            height: 24.h,
                            width: 27.18.w,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: ColorUtils.redcolor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/pngs/phoneIcon.png',
                            height: 24.h,
                            width: 27.18.w,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  RequestLeaveorAbsence() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
          child: Text(
            'Select one',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        content: Container(
          height: 260.h,
          width: 274.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => LeaveJobScreen());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 80.h,
                  width: 274,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [ColorUtils().softShadow],
                    border: Border.all(
                      color: Color(0xffCACACA),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Request Leave",
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
              Container(
                padding: EdgeInsets.all(10),
                height: 80.h,
                width: 274,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [ColorUtils().softShadow],
                  border: Border.all(
                    color: Color(0xffCACACA),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Absence",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
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
  }

  EmergencyAlert() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
            child: Text(
          'Emergency alert',
          style: FontUtils.kextralargestyle,
        )),
        content: Container(
          height: 260.h,
          width: 274.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Reason",
                  style: FontUtils.kmediumblackstyledailog,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 135.h,
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
                height: 10.h,
              ),
              InkWell(
                onTap: () => Get.back(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Cancel',
                      style: FontUtils.kInstructionGrey,
                    ),
                    SizedBox(
                      width: 10.w,
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
  }
}
