import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_button.dart';
import '../Widgets_Components/custom_text_field.dart';
import '../utils/color_utils.dart';

class ProfileAddress extends StatefulWidget {
  const ProfileAddress({Key? key}) : super(key: key);

  @override
  State<ProfileAddress> createState() => _ProfileAddressState();
}

class _ProfileAddressState extends State<ProfileAddress> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text('Country'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(
                  hintText: 'West Sussex',
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Text('Town'),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              hintText: 'Brigton',
            ),
            SizedBox(
              height: 15.h,
            ),
            Text('Post Code'),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              hintText: 'BN2 1FD',
            ),
            SizedBox(
              height: 15.h,
            ),
            Text('Phone'),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              hintText: '01273 123456',
            ),
            SizedBox(
              height: 15.h,
            ),
            Text('Address'),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(
              hintText: '1 Clarendon terrace',
            ),
            SizedBox(
              height: 40.h,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: CustomButton(
                buttonText: 'Save',
                onPress: () {
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
