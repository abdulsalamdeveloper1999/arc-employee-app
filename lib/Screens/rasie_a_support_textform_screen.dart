import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/Widgets_Components/drop_down.dart';
import 'package:arcemployee/Widgets_Components/red_button_widget.dart';
import 'package:arcemployee/home.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/text_form_field_widget.dart';
import '../utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';

//Packages
import 'package:dropdown_button2/dropdown_button2.dart';

class RaiseSupportTextFormScreen extends StatefulWidget {
  const RaiseSupportTextFormScreen({Key? key}) : super(key: key);

  @override
  State<RaiseSupportTextFormScreen> createState() =>
      _RaiseSupportTextFormScreenState();
}

class _RaiseSupportTextFormScreenState
    extends State<RaiseSupportTextFormScreen> {
  // final List<String> genderItems = [
  //   'Data 1',
  //   'Data 2',
  // ];

  String? selectedValue;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormFieldWidget(
                    hintText: 'Full Name',
                    style: FontUtils.kmediumstyle,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Role',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DropDownWidget(genderItems: [
                    'staff member',
                    'Customer',
                    'Relative',
                    'Health Care Professional',
                    'Other'
                  ], TextHint: 'staff member'),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Preferred method of contact',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DropDownWidget(
                      genderItems: ['Staff Member', 'Email', 'Phone Call'],
                      TextHint: 'In-app Message'),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormFieldWidget(
                    hintText: 'Type here....',
                    style: FontUtils.ksmallstyle,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Reason',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormFieldWidget(
                    hintText: 'Type here....',
                    style: FontUtils.ksmallstyle,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                      buttonText: 'Submit',
                      onPress: () {
                        Get.back();
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
