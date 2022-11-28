import 'package:arcemployee/Widgets_Components/custom_back_button.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85.h,
        backgroundColor: Colors.white,
        leading: Row(
          children: const [
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 19.0, right: 21, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Visit stats',
                      style: FontUtils.klargestyle,
                    ),
                    SvgPicture.asset('assets/pngs/menu_icon.svg'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0, right: 20, top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        _ReuseContainerStatsScreen(
                          upparText: "Total Visits",
                          bottomText: "24",
                        ),
                        _ReuseContainerStatsScreen(
                          upparText: "Total Estimated\nMill",
                          bottomText: "64",
                        ),
                        _ReuseContainerStatsScreen(
                          upparText: "Total Travel\nTime",
                          bottomText: "125",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        _ReuseContainerStatsScreen(
                          upparText: "Running rate\n mins",
                          bottomText: "34",
                        ),
                        _ReuseContainerStatsScreen(
                          upparText: "Total Cancel\nVisits",
                          bottomText: "2",
                        ),
                        _ReuseContainerStatsScreen(
                          upparText: "Total Working\nTime",
                          bottomText: "3263",
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _ReuseContainerStatsScreen extends StatelessWidget {
  final String upparText;
  final String bottomText;
  const _ReuseContainerStatsScreen({
    Key? key,
    required this.upparText,
    required this.bottomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.sp),
        boxShadow: [ColorUtils().softShadow],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            upparText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            bottomText,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xffAF1F25)),
          )
        ],
      ),
    );
  }
}
