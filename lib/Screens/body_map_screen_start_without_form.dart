import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../Widgets_Components/custom_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class BodyMapScreenWithoutForm extends StatefulWidget {
  const BodyMapScreenWithoutForm({Key? key}) : super(key: key);

  @override
  State<BodyMapScreenWithoutForm> createState() =>
      _BodyMapScreenWithoutFormState();
}

class _BodyMapScreenWithoutFormState extends State<BodyMapScreenWithoutForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85.h,
        backgroundColor: Colors.white.withOpacity(0.6),
        leading: Row(
          children: [
            CustomBackButton(),
          ],
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Image.asset(
                'assets/images/ArchitectureLogo1.png',
                height: 50,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Select Injuries body Part',
                          style: FontUtils.kextralargestyle,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SvgPicture.asset(
                          'assets/icons/humanvector.svg',
                          height: 300,
                          width: 135,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/backarrow.svg'),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'Front Side',
                              style: TextStyle(
                                fontFamily: FontUtils.Poppinsnormal,
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            SvgPicture.asset('assets/icons/forwardarrow.svg'),
                          ],
                        ),
                      ],
                    ),
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
