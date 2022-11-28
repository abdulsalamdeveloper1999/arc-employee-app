import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import '../utils/image_utils.dart';

int item = 10;
int checkstatus = 4;

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class OutStandingItemsTask extends StatefulWidget {
  const OutStandingItemsTask({Key? key}) : super(key: key);

  @override
  State<OutStandingItemsTask> createState() => _OutStandingItemsTaskState();
}

class _OutStandingItemsTaskState extends State<OutStandingItemsTask> {
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Image.asset(
              'assets/icons/outstandingtask.png',
              height: 25.h,
              width: 25.h,
            ),
          ),
        ],
        title: Image.asset(
          'assets/images/ArchitectureLogo1.png',
          height: 50,
          width: 60,
        ),
      ),
      // SvgPicture.asset(
      //   ImageUtils.Frame,
      //   fit: BoxFit.none,
      //   height: 20.h,
      //   width: 30.w,
      // ),

      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 2,
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
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Vist 45 mints',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        'With',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Color(0xffCACACA)),
                                      ),
                                    ],
                                  ),

                                  Text(
                                    'Alfredo Culhane',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
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
                                    height: 10.h,
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
                                            "10 May 09:45-10:30",
                                            style: FontUtils.kstyle,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
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
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              ImageUtils.tickgreen),
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
                                              color: Color(0xff0DC990),
                                            ),
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
