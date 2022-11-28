import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/drop_down.dart';
import '../Widgets_Components/red_button_widget.dart';
import '../Widgets_Components/text_form_field_widget.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class RequestPPeForm extends StatefulWidget {
  const RequestPPeForm({Key? key}) : super(key: key);

  @override
  State<RequestPPeForm> createState() => _RequestPPeFormState();
}

class _RequestPPeFormState extends State<RequestPPeForm> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                ListView(
                  shrinkWrap: true,
                  children: [
                    Text('ITEM', style: FontUtils.klargestyle),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormFieldWidget(
                      hintText: 'Face Mask',
                      style: FontUtils.kmediumstyle,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text('Quantity', style: FontUtils.klargestyle),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextFormFieldWidget(
                      hintText: '1 Box',
                      style: FontUtils.kmediumstyle,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Size',
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
                      'Small',
                      'Medium',
                      'Large',
                      'Extra Large',
                      'XXL',
                      'Not Applicable'
                    ], TextHint: 'Small'),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 250.h,
                    ),
                    CustomButton(
                      buttonText: "Request PPE",
                      onPress: () {
                        Get.back();
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
