import 'package:arcemployee/Screens/profile_screen.dart';
import 'package:arcemployee/Screens/conatins_start_visit_screen_data.dart';
import 'package:arcemployee/Screens/suppport_plans_screen.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import '../utils/image_utils.dart';
import 'client_cases.dart';
import 'location_screen.dart';

List iconsClient = [
  'assets/icons/activities.svg',
  'assets/icons/headphone.svg',
  'assets/icons/cases.svg',
];

List nameClient = ['Activities', 'Support', 'Cases'];

class ClientsRecord extends StatefulWidget {
  const ClientsRecord({Key? key}) : super(key: key);

  @override
  State<ClientsRecord> createState() => _ClientsRecordState();
}

class _ClientsRecordState extends State<ClientsRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 85.h,
        elevation: 0,
        backgroundColor: ColorUtils.whiteColor,
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Client Records",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: ColorUtils.redcolor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ),
            child: SvgPicture.asset(
              "assets/icons/syncRed.svg",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                    boxShadow: [ColorUtils().softShadow],
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          'assets/pngs/dp.png',
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Alfredo Culhane',
                        style: FontUtils.kInstructionStyle,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        'ID: CASE1511378548',
                        style: FontUtils.ksmallten,
                      ),
                      ListView(
                        shrinkWrap: true,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17.0),
                                child: InkWell(
                                  onTap: () => Get.to(
                                    () => LocationScreen(),
                                  ),
                                  child: Row(
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
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: reuseRow(
                              lefttext: 'Status',
                              rightredtext: 'In Progress',
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: reuseRow(
                              lefttext: 'Allergies',
                              rightredtext: 'Peanuts',
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: reuseRow(
                              lefttext: 'Shared Access',
                              rightredtext: 'Sons',
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Center(
                            child: Text(
                              'View All Fields',
                              style: TextStyle(
                                  fontFamily: FontUtils.Poppinsnormal,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                  color: ColorUtils.redcolor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 50.h,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: reuseIconTextRow(
                    svgURI: 'assets/icons/activities.svg',
                    textName: 'Activities',
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 50.h,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => SupportPlanScreen(),
                    );
                  },
                  child: reuseIconTextRow(
                    svgURI: 'assets/icons/headphone.svg',
                    textName: 'Support',
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 50.h,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () {
                    Get.to(() => ClientCasesScreen());
                  },
                  child: reuseIconTextRow(
                    svgURI: 'assets/icons/cases.svg',
                    textName: 'Cases',
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Recent Updates'),
              ),
              SizedBox(
                height: 5.h,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 81.h,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.teal,
                            child: Text('LA'),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Lydia Aminoff completed task name activity'),
                              SizedBox(),
                              Text('10 May 2022  5m ago')
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "View All Activity",
                style: FontUtils.kInstructionRed,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class reuseIconTextRow extends StatelessWidget {
  final svgURI;
  final textName;

  const reuseIconTextRow({
    Key? key,
    required this.svgURI,
    required this.textName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            SvgPicture.asset(
              svgURI,
              height: 20.h,
            ),
            SizedBox(width: 10.w),
            Text(
              textName,
              style: TextStyle(
                  fontSize: 14.sp, fontFamily: FontUtils.Poppinsnormal),
            ),
          ],
        ),
        SvgPicture.asset("assets/pngs/forward_icon.svg", height: 20.h),
      ],
    );
  }
}

class reuseRow extends StatelessWidget {
  final String lefttext;
  final String rightredtext;

  const reuseRow({
    Key? key,
    required this.lefttext,
    required this.rightredtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              lefttext,
              style: FontUtils.kmediumblackstyle,
            ),
            Divider(),
          ],
        ),
        Text(
          rightredtext,
          style: FontUtils.kmediumstylefivehundeRed,
        )
      ],
    );
  }
}
