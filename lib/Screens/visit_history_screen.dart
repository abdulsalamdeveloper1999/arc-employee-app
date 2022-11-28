import 'package:arcemployee/Screens/setting_two.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import '../utils/image_utils.dart';

int _value = 1;

class VisitHistoryScreen extends StatefulWidget {
  const VisitHistoryScreen({Key? key}) : super(key: key);

  @override
  State<VisitHistoryScreen> createState() => _VisitHistoryScreenState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _VisitHistoryScreenState extends State<VisitHistoryScreen> {
  List TaskStatusColor = [
    ColorUtils.redcolor,
    ColorUtils.orangeColor,
    ColorUtils.greenColor
  ];

  int item = 10;
  int checkstatus = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
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
        actions: [
          DropdownButton(
            dropdownColor: Colors.white,
            elevation: 10,
            icon: Visibility(visible: false, child: Icon(Icons.arrow_downward)),
            value: _value,
            items: [
              DropdownMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(left: 80.0, top: 25),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                ),
                value: 1,
              ),
              DropdownMenuItem(child: Text("Daily"), value: 2),
              DropdownMenuItem(child: Text("Weekly"), value: 3),
              DropdownMenuItem(child: Text("Monthly"), value: 4),
              DropdownMenuItem(child: Text("Yearly"), value: 5),
              DropdownMenuItem(child: Text("Total to date"), value: 6)
            ],
            /////////////////

            onChanged: (int? value) {
              setState(
                () {
                  // _value = value!;
                },
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Last 30 Days Visit History",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: ColorUtils.blackColor,
                            fontFamily: FontUtils.Poppinsnormal,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: item,
                  itemBuilder: (BuildContext, index) {
                    if (index == checkstatus) {
                      // setState(() {
                      item = 4;
                      //  });

                      print('hello');
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Container(
                        padding: EdgeInsets.only(top: 4.h, bottom: 8.h),
                        width: 335.w,
                        // height: 220.h,
                        decoration: BoxDecoration(
                          color: ColorUtils.whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.teal,
                                      maxRadius: 33,
                                      child: Text(
                                        'LA',
                                        style: TextStyle(
                                            color: ColorUtils.whiteColor),
                                      ),
                                    ),
                                    title: Transform.translate(
                                      offset: Offset(-7, -2),
                                      child: Text(
                                        'Service user ' + '${index++}',
                                        style: TextStyle(
                                            fontFamily: FontUtils.Poppinsnormal,
                                            fontSize: 16,
                                            color: Color(0xff121212),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    subtitle: Transform.translate(
                                      offset: Offset(-6, 0),
                                      child: Text(
                                        'Visit 45 mints',
                                        style: TextStyle(
                                          fontFamily: FontUtils.Poppinsnormal,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff121212),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1,
                                    width: 325.w,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: ColorUtils.dividerColor),
                                    ),
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
                                  ListView(
                                    padding: EdgeInsets.only(left: 12),
                                    shrinkWrap: true,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(ImageUtils.watch),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            "09:45-10:30",
                                            style: FontUtils.kstyle,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.w,
                                      ),
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
                                      SizedBox(
                                        height: 10.w,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(ImageUtils.watch),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            "Travel time : 15 min",
                                            style: FontUtils.kstyle,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(ImageUtils.location),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            "Travel distance : 1 mile",
                                            style: FontUtils.kstyle,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          index == checkstatus
                                              ? SvgPicture.asset(
                                                  ImageUtils.tickgreen)
                                              : SvgPicture.asset(
                                                  ImageUtils.tick),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            "${index}/4 Task Complete",
                                            style: TextStyle(
                                                fontFamily:
                                                    FontUtils.Poppinsnormal,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400,
                                                color: index == checkstatus
                                                    ? (ColorUtils
                                                        .lightgreenColor)
                                                    : ColorUtils.redcolor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
