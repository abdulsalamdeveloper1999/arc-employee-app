import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class SupportPlanScreen extends StatefulWidget {
  const SupportPlanScreen({Key? key}) : super(key: key);

  @override
  State<SupportPlanScreen> createState() => _SupportPlanScreenState();
}

class _SupportPlanScreenState extends State<SupportPlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  width: 335.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [ColorUtils().softShadow],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Latest MUST Risk Level',
                              style: FontUtils.ksmallblackstyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Low Risk',
                              style: FontUtils.kmediumblackstyle,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  width: 335.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [ColorUtils().softShadow],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Dependency Level',
                              style: FontUtils.ksmallblackstyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Minimal assistance or supervision',
                              style: FontUtils.kmediumblackstyle,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  width: 335.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [ColorUtils().softShadow],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current situation & identified needs',
                          style: FontUtils.ksmallblackstyle,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla augue, malesuada sit amet placerat vitae, efficitur ac enim. In scelerisque neque vel eros sodales tempor.\n\nVestibulum non leo quam. Proin eget nisi et ligula semper aliquam. Integer euismod felis nec commodo pellentesque.',
                          style: FontUtils.kmediumblackstyle,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  width: 335.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [ColorUtils().softShadow],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nunc a pretium odio. Phasellus',
                          style: FontUtils.ksmallblackstyle,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla augue, malesuada sit amet placerat vitae, efficitur ac enim. In scelerisque neque vel eros sodales tempor.\n\nVestibulum non leo quam. Proin eget nisi et ligula semper aliquam. Integer euismod felis nec commodo pellentesque. ',
                          style: FontUtils.kmediumblackstyle,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                  width: 335.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [ColorUtils().softShadow],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nunc a pretium odio. Phasellus',
                          style: FontUtils.ksmallblackstyle,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Image.asset('assets/icons/tabletimage.jpg'),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
