import 'package:arcemployee/Screens/upload_document_screen.dart';
import 'package:arcemployee/Widgets_Components/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';
import '../utils/image_utils.dart';
import 'Policies_Procedures_Screen.dart';

class PoliciesAndProcedureScreen extends StatefulWidget {
  const PoliciesAndProcedureScreen({Key? key}) : super(key: key);

  @override
  State<PoliciesAndProcedureScreen> createState() =>
      _PoliciesAndProcedureScreenState();
}

class _PoliciesAndProcedureScreenState
    extends State<PoliciesAndProcedureScreen> {
  List trailingIcons = [
    "assets/pngs/true_icon.svg",
    "assets/pngs/false_icon.svg",
    "assets/pngs/forward_icon.svg"
  ];
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
          "Policies & Procedures",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: ColorUtils.redcolor),
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  height: 50.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: ColorUtils.whiteColor,
                    boxShadow: [ColorUtils().softShadow],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => PoliciesScreen(),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/pngs/document_icon.svg",
                              height: 20.h,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Document Name",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: FontUtils.Poppinsnormal),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              trailingIcons[index].toString(),
                              height: 20.h,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
