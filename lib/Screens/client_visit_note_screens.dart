import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets_Components/custom_back_button.dart';

class ClientVisitNoteScreen extends StatefulWidget {
  const ClientVisitNoteScreen({Key? key}) : super(key: key);

  @override
  State<ClientVisitNoteScreen> createState() => _ClientVisitNoteScreenState();
}

class _ClientVisitNoteScreenState extends State<ClientVisitNoteScreen> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 15.0, top: 15, right: 14, bottom: 10),
            margin: const EdgeInsets.only(left: 21.0, right: 21, top: 20),
            width: 334.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ColorUtils().softShadow],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Surgery Details',
                  style: FontUtils.kextralargestyle,
                ),
                SizedBox(height: 10.h),
                ReuseRowWidget(
                  righttext: 'Doctor Name',
                  lefttext: 'Marios',
                ),
                SizedBox(height: 10.h),
                ReuseRowWidget(
                  righttext: 'Date of Surgery',
                  lefttext: '06/06/2022',
                ),
                SizedBox(height: 10.h),
                ReuseRowWidget(
                  righttext: 'Surgery Body Side',
                  lefttext: 'Not Applicable',
                ),
                SizedBox(height: 10.h),
                ReuseRowWidget(
                  righttext: 'Anesthesia Type',
                  lefttext: 'General',
                ),
                SizedBox(height: 10.h),
                ReuseRowWidget(
                  righttext: 'Expected Duration',
                  lefttext: '1.00 Hours',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReuseRowWidget extends StatelessWidget {
  final String righttext;
  final String lefttext;
  const ReuseRowWidget({
    Key? key,
    required this.righttext,
    required this.lefttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              righttext,
              style: FontUtils.kmediumstylefivehundered,
            ),
          ],
        ),
        Row(
          children: [
            Text(
              lefttext,
              style: FontUtils.ksmallblackstyle,
            ),
          ],
        ),
      ],
    );
  }
}
