import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';

class RotaScreen extends StatefulWidget {
  const RotaScreen({Key? key}) : super(key: key);

  @override
  State<RotaScreen> createState() => _RotaScreenState();
}

class _RotaScreenState extends State<RotaScreen> {
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/icons/lessthan.svg"),
            Text(
              "December 2022",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff373737)),
            ),
            SvgPicture.asset("assets/icons/greaterthan.svg"),
            InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Start Date",
                            style: FontUtils.kInstructionStyle,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "December 2022",
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Image.asset(
                            "assets/icons/fullcalender.png",
                            height: 240.h,
                            width: 280.w,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Text(
                                  "Cancel",
                                  style: FontUtils.kInstructionGrey,
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                "Continue",
                                style: FontUtils.kInstructionStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                child: SvgPicture.asset("assets/icons/setting.svg")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 5),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date",
                          style: FontUtils.klargestyle,
                        ),
                        _reuseTable(
                          text1: "Sunday",
                        ),
                        _reuseTable(
                          text1: "Monday",
                        ),
                        _reuseTable(
                          text1: "Tueday",
                        ),
                        _reuseTable(
                          text1: "Wedbnesday",
                        ),
                        _reuseTable(
                          text1: "Thursday",
                        ),
                        _reuseTable(
                          text1: "Friday",
                        ),
                      ],
                    ),
                    _reuseColumn(
                      time: "07:00",
                    ),
                    _reuseColumn(
                      time: "08:00",
                    ),
                    _reuseColumn(
                      time: "09:00",
                    ),
                    _reuseColumn(
                      time: "10:00",
                    ),
                    _reuseColumn(
                      time: "11:00",
                    ),
                    _reuseColumn(
                      time: "12:00",
                    ),
                    _reuseColumn(
                      time: "13:00",
                    ),
                    _reuseColumn(
                      time: "14:00",
                    ),
                    _reuseColumn(
                      time: "15:00",
                    ),
                    _reuseColumn(
                      time: "16:00",
                    ),
                    _reuseColumn(
                      time: "17:00",
                    ),
                    _reuseColumn(
                      time: "18:00",
                    ),
                    _reuseColumn(
                      time: "19:00",
                    ),
                    _reuseColumn(
                      time: "20:00",
                    ),
                    _reuseColumn(
                      time: "21:00",
                    ),
                    _reuseColumn(
                      time: "22:00",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}

class _reuseTable extends StatelessWidget {
  final text1;

  const _reuseTable({
    Key? key,
    required this.text1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      width: 100.w,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.grey.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: FontUtils.ktotalpaystyle,
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            "01/01/2022",
            style: FontUtils.ksmalleightp,
          ),
        ],
      ),
    );
  }
}

class _reuseColumn extends StatelessWidget {
  final time;
  final WidgetEmphty;
  const _reuseColumn({
    Key? key,
    required this.time,
    this.WidgetEmphty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          time,
          style: FontUtils.kredtotalpaystyle,
        ),
        Container(
          height: 62.h,
          width: 100.w,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                "",
                style: FontUtils.ktotalpaystyle,
              ),
              Text(
                "",
                style: FontUtils.ksmalleightp,
              ),
              Text(
                "",
                style: FontUtils.ksmalleightp,
              ),
            ],
          ),
        ),
        Container(
          // height: 60.h,
          width: 100.w,
          height: 62.h,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                "",
                style: FontUtils.ktotalpaystyle,
              ),
            ],
          ),
        ),
        Container(
          // height: 60.h,
          width: 100.w,
          height: 62.h,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                "",
                style: FontUtils.ktotalpaystyle,
              ),
            ],
          ),
        ),
        Container(
          // height: 60.h,
          width: 100.w,
          height: 62.h,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                "",
                style: FontUtils.ktotalpaystyle,
              ),
            ],
          ),
        ),
        Container(
          width: 100.w,
          height: 62.h,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                "",
                style: FontUtils.ktotalpaystyle,
              ),
            ],
          ),
        ),
        Container(
          width: 100.w,
          height: 62.h,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
              bottom: BorderSide(
                color: Colors.grey.withOpacity(0.2),
                width: 1,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                "",
                style: FontUtils.ktotalpaystyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
