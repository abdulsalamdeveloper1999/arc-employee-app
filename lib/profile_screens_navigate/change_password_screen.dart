import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_button.dart';
import '../Widgets_Components/custom_text_field.dart';
import '../utils/color_utils.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          height: 50.h,
          width: 60.w,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text('Enter your old password'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'Type here...',
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text('Enter your new password'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'Type here...',
                ),
                SizedBox(
                  height: 40.h,
                ),
                CustomButton(
                  buttonText: 'Change Password',
                  onPress: () {
                    Get.back();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
