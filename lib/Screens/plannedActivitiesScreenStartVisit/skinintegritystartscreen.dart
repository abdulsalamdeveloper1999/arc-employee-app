import 'package:flutter/Material.dart';
import 'package:arcemployee/Screens/skin_integrity_two.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widgets_Components/custom_back_button.dart';
import '../../Widgets_Components/skin_intregrity_text_field.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';

class SkinIntegrityStartScreen extends StatefulWidget {
  const SkinIntegrityStartScreen({Key? key}) : super(key: key);

  @override
  State<SkinIntegrityStartScreen> createState() =>
      _SkinIntegrityStartScreenState();
}

class _SkinIntegrityStartScreenState extends State<SkinIntegrityStartScreen> {
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
                              SvgPicture.asset('assets/pngs/skinIntegrity.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Skin Integrity',
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
                        Text('Please specify:'),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Broken/Tear',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Healing',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Good',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Red/Sore',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Spacer(),
          // Container(
          //   height: 65.h,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 20.0, right: 23),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           children: [
          //             Text(
          //               'Add Comment....',
          //               style: TextStyle(
          //                 fontFamily: FontUtils.Poppinsnormal,
          //                 fontSize: 12.sp,
          //                 fontWeight: FontWeight.w400,
          //                 color: Color(0xffABABAB),
          //               ),
          //             ),
          //           ],
          //         ),
          //         SvgPicture.asset('assets/pngs/forwardred.svg')
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
