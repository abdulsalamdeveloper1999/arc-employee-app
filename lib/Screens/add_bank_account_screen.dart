import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/red_button_widget.dart';
import '../Widgets_Components/text_form_field_widget.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class AddBankAccountScreen extends StatefulWidget {
  const AddBankAccountScreen({Key? key}) : super(key: key);

  @override
  State<AddBankAccountScreen> createState() => _AddBankAccountScreenState();
}

class _AddBankAccountScreenState extends State<AddBankAccountScreen> {
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
          "Add Bank Account",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: ColorUtils.redcolor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 25, top: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: FontUtils.klargestyle,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Dulice Vetrovs',
                      style: FontUtils.ksmallstyle,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Name on Account',
                      style: FontUtils.klargestyle,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Dulice Vetrovs',
                      style: FontUtils.ksmallstyle,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Bank',
                      style: FontUtils.klargestyle,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Dulice Vetrovs',
                      style: FontUtils.ksmallstyle,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Sort Code',
                      style: FontUtils.klargestyle,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Dulice Vetrovs',
                      style: FontUtils.ksmallstyle,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Account Number',
                      style: FontUtils.klargestyle,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Dulice Vetrovs',
                      style: FontUtils.ksmallstyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomButton(
                  buttonText: 'Add Now',
                  onPress: () {
                    Get.back();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
