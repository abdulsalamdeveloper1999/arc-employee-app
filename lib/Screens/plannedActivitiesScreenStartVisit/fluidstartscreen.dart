import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widgets_Components/bottom_widget_container.dart';
import '../../Widgets_Components/custom_back_button.dart';
import '../../Widgets_Components/skin_intregrity_text_field.dart';
import '../../utils/color_utils.dart';
import '../../utils/font_utils.dart';
import '../fluid_screen.dart';

class FluidStartScreen extends StatefulWidget {
  const FluidStartScreen({Key? key}) : super(key: key);

  @override
  State<FluidStartScreen> createState() => _FluidStartScreenState();
}

class _FluidStartScreenState extends State<FluidStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: Column(
              children: [
                Container(
                  height: 60.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    boxShadow: [ColorUtils().softShadow],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/pngs/skinIntegrity.svg'),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                'Fluid',
                                style: FontUtils.kmediumblackstyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 17.0),
                        child: SvgPicture.asset(
                          'assets/pngs/flagicon.svg',
                          height: 26.h,
                          width: 26.w,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    boxShadow: [ColorUtils().softShadow],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'INSTRUCTIONS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                            'Please make me a crup of tea with one sugar\nI like my tea to be strong'),
                        Row(
                          children: [
                            Text('\n\nFood Allergies :'),
                            Text(
                              '\n\nPeanuts',
                              style: TextStyle(color: ColorUtils.redcolor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Water',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Hot Drink',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomTextFieldSkinIntegrity(
                          hintText: 'Juice',
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        CustomButtonFluid(
                          hintText: 'Enter amount of drink ml',
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Spacer(),
          // BottomWidgetArrow(),
        ],
      ),
    );
  }
}
