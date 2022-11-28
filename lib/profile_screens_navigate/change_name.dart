import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/Widgets_Components/custom_text_field.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';

class ChangeName extends StatefulWidget {
  const ChangeName({Key? key}) : super(key: key);

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
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
          height: 50,
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
                Text('Enter You New Profile Name'),
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
                Text('Enter your password'),
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
                    buttonText: 'Change Name',
                    onPress: () {
                      Get.back();
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
