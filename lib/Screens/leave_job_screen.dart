import 'package:arcemployee/Widgets_Components/drop_down.dart';
import 'package:arcemployee/login.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/red_button_widget.dart';
import '../Widgets_Components/text_form_field_widget.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class LeaveJobScreen extends StatefulWidget {
  const LeaveJobScreen({Key? key}) : super(key: key);

  @override
  State<LeaveJobScreen> createState() => _LeaveJobScreenState();
}

class _LeaveJobScreenState extends State<LeaveJobScreen> {
  final maxLines = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 85.h,
        elevation: 0,
        backgroundColor: ColorUtils.whiteColor,
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Leave Job",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorUtils.redcolor),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 33, top: 22),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reason',
                  style: FontUtils.klargestyle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                DropDownWidget(genderItems: [
                  'Annaul Leave',
                  'Emergency / Compassionate Leave',
                  'sickness',
                  'other'
                ], TextHint: 'Annual Leave'),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'From Date',
                  style: FontUtils.klargestyle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormFieldWidget(
                  hintText: 'DD/MM/YYYY',
                  style: FontUtils.ksmallstyle,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'To Date',
                  style: FontUtils.klargestyle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormFieldWidget(
                  hintText: 'DD/MM/YYYY',
                  style: FontUtils.ksmallstyle,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Any Notes',
                  style: FontUtils.klargestyle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 110.h,
                  width: 335.w,
                  child: TextField(
                    maxLines: maxLines,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: "Type",
                      hintStyle: FontUtils.ksmallstyle,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Get.to(() => Login());
              },
              child: RedButtonWidget(buttonText: 'Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
