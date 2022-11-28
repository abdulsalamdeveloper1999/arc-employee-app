import 'package:arcemployee/Screens/end_visit_screen.dart';
import 'package:arcemployee/Screens/starting_visit_screen.dart';
import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/Widgets_Components/custom_text_field.dart';
import 'package:arcemployee/Widgets_Components/signature_screen.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/suffix_text_form_field.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class FinancialTransactionSheet extends StatefulWidget {
  const FinancialTransactionSheet({Key? key}) : super(key: key);

  @override
  State<FinancialTransactionSheet> createState() =>
      _FinancialTransactionSheetState();
}

class _FinancialTransactionSheetState extends State<FinancialTransactionSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorUtils.backgroundColor,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomSuffixTextField(
                    suffixhint: 'Type here...',
                    prefixhint: 'Transaction Details',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomSuffixTextField(
                    suffixhint: 'Type here...',
                    prefixhint: 'Amount Given',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomSuffixTextField(
                    suffixhint: 'Type here...',
                    prefixhint: 'Amount Spent',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomSuffixTextField(
                    suffixhint: 'Type here...',
                    prefixhint: 'Change Given',
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 51.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [ColorUtils().softShadow]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Upload of receipt ( if )'),
                          ],
                        ),
                        SvgPicture.asset('assets/icons/cameraredicon.svg')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => SignatureScreen());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 51.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [ColorUtils().softShadow]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Customer Signature'),
                            ],
                          ),
                          SvgPicture.asset('assets/icons/pencelicon.svg')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => SignatureScreen());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 51.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [ColorUtils().softShadow]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Staff Sign'),
                            ],
                          ),
                          SvgPicture.asset('assets/icons/pencelicon.svg')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => EndVisitScreen());
                    },
                    child: CustomButton(
                        buttonText: 'Submite',
                        onPress: () {
                          Get.to(() => EndVisitScreen());
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSuffixTextField extends StatelessWidget {
  final suffixhint;
  final prefixhint;
  final suffixicon;

  final text;
  const CustomSuffixTextField({
    Key? key,
    this.text,
    this.suffixhint,
    required this.prefixhint,
    this.suffixicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: true,
      autofocus: true,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        border: InputBorder.none,
        suffixIcon: suffixicon,
        prefix: Text("$prefixhint"),
        hintTextDirection: TextDirection.rtl,
        hintText: "$suffixhint",
        prefixStyle: TextStyle(
            color: ColorUtils.blackColor,
            fontFamily: FontUtils.Poppinsnormal,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
