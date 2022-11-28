import 'package:arcemployee/Screens/upload_document_screen.dart';
import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class MyDocumentScreen extends StatefulWidget {
  const MyDocumentScreen({Key? key}) : super(key: key);

  @override
  State<MyDocumentScreen> createState() => _MyDocumentScreenState();
}

class _MyDocumentScreenState extends State<MyDocumentScreen> {
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
          "My Document",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: ColorUtils.redcolor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
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
                              "assets/pngs/document_icon.svg",
                              height: 20.h,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Document Name",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: FontUtils.Poppinsnormal),
                            )
                          ],
                        ),
                        SvgPicture.asset("assets/pngs/forward_icon.svg",
                            height: 20.h),
                      ],
                    ),
                  ),
                );
              },
            ),
            Spacer(),
            CustomButton(
                buttonText: 'Upload Document',
                onPress: () {
                  Get.to(() => UploadDocumentScreen());
                })
          ],
        ),
      ),
    );
  }
}
