import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widgets_Components/custom_back_button.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';

class MoodRecordStartScreen extends StatefulWidget {
  const MoodRecordStartScreen({Key? key}) : super(key: key);

  @override
  State<MoodRecordStartScreen> createState() => _MoodRecordStartScreenState();
}

class _MoodRecordStartScreenState extends State<MoodRecordStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              SvgPicture.asset('assets/icons/mood_icon.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Mood',
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
                        Text('Pleaase specify mood of service user.'),
                        SizedBox(
                          height: 15.h,
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          height: 45.w,
                          width: Get.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/cameraiconmood.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text('Determine face mood')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          width: 335,
                          height: 155,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 1),
                            child: TextFormField(
                              textDirection: TextDirection.rtl,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText: 'Type How he feel today',
                                hintStyle: FontUtils.ksmallstyle,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
