import 'package:arcemployee/Screens/setting_two.dart';
import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/Widgets_Components/red_button_widget.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_text_field.dart';
import '../Widgets_Components/text_form_field_widget.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class RaiseAConcern extends StatefulWidget {
  const RaiseAConcern({Key? key}) : super(key: key);

  @override
  State<RaiseAConcern> createState() => _RaiseAConcernState();
}

class _RaiseAConcernState extends State<RaiseAConcern> {
  final maxLines = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 85.h,
        elevation: 0,
        backgroundColor: ColorUtils.whiteColor,
        leading: const CustomBackButton(),
        title: Text(
          "Raise a Concern",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
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
                  'Type',
                  style: FontUtils.klargestyle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormFieldWidget(
                  hintText: 'Example : Health & Safety Issue',
                  style: FontUtils.ksmallstyle,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Customer Name',
                  style: FontUtils.klargestyle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormFieldWidget(
                  hintText: 'Example : Alfredo Culhane',
                  style: FontUtils.ksmallstyle,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Staff Name',
                  style: FontUtils.klargestyle,
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormFieldWidget(
                  hintText: 'Example : Alfredo Culhane',
                  style: FontUtils.ksmallstyle,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Notes',
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
                  Navigator.pop(context);
                },
                child: CustomButton(
                  buttonText: 'Submit',
                  onPress: () {
                    Get.back();
                  },
                )),
          ],
        ),
      ),
    );
  }
}
