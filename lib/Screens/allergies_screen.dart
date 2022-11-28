import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';

class AllergiesScreen extends StatefulWidget {
  const AllergiesScreen({Key? key}) : super(key: key);

  @override
  State<AllergiesScreen> createState() => _AllergiesScreenState();
}

class _AllergiesScreenState extends State<AllergiesScreen> {
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
        children: [
          reuseContainerText(
            text: 'Peanuts',
          ),
          reuseContainerText(
            text: 'Cool Drinks',
          ),
          reuseContainerText(
            text: 'Burger',
          ),
          reuseContainerText(
            text: 'Food Name',
          ),
          reuseContainerText(
            text: 'Food Name',
          ),
          reuseContainerText(
            text: 'Food Name',
          ),
          reuseContainerText(
            text: 'Food Name',
          ),
        ],
      ),
    );
  }
}

class reuseContainerText extends StatelessWidget {
  final String text;

  const reuseContainerText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 15),
      height: 50.h,
      width: 335.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [ColorUtils().softShadow],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$text',
              style: FontUtils.kmediumblackstyle,
            ),
          ],
        ),
      ),
    );
  }
}
