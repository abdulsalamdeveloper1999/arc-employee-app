import 'package:arcemployee/Screens/upload_document_screen.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';

class CustomFormScreen extends StatefulWidget {
  const CustomFormScreen({Key? key}) : super(key: key);

  @override
  State<CustomFormScreen> createState() => _CustomFormScreenState();
}

class _CustomFormScreenState extends State<CustomFormScreen> {
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReuseContainerWidget(),
            SizedBox(
              height: 15.h,
            ),
            ReuseContainerWidget(),
            SizedBox(
              height: 15.h,
            ),
            ReuseContainerWidget(),
            SizedBox(
              height: 15.h,
            ),
            ReuseContainerWidget(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseContainerWidget extends StatelessWidget {
  const ReuseContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => UploadDocumentScreen());
      },
      child: Container(
        width: 335.w,
        height: 78.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [ColorUtils().softShadow],
          color: Color(0xffFFFFFF),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailTextWigetInvoice(
                topText: 'Document name',
                bottomText: 'updated : 12-6-2022',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailTextWigetInvoice extends StatelessWidget {
  final String topText;
  final String bottomText;

  const DetailTextWigetInvoice({
    Key? key,
    required this.topText,
    required this.bottomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          topText,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          bottomText,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
