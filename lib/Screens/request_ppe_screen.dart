import 'package:arcemployee/Screens/request_ppe_form.dart';
import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';
import '../utils/font_utils.dart';

class RequestPPEScreen extends StatefulWidget {
  const RequestPPEScreen({Key? key}) : super(key: key);

  @override
  State<RequestPPEScreen> createState() => _RequestPPEScreenState();
}

class _RequestPPEScreenState extends State<RequestPPEScreen> {
  List status = ['Pending', 'Completed', 'Completed'];
  List image = [
    'assets/pngs/basket.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        toolbarHeight: 85.h,
        elevation: 0,
        backgroundColor: ColorUtils.whiteColor,
        leading: const CustomBackButton(),
        centerTitle: true,
        title: Text(
          "Request PPE",
          style: TextStyle(
              fontFamily: FontUtils.Poppinsnormal,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: ColorUtils.redcolor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CustomFormWidget(
                    item: 'Name',
                    quantity: '1 Box',
                    size: 'Small',
                    textcolor: Colors.red,
                    status: 'Complete',
                    image: 'assets/pngs/basket.png',
                    color: Colors.red),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              buttonText: 'Add more items',
              onPress: () {
                Get.to(
                  () => RequestPPeForm(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CustomFormWidget extends StatelessWidget {
  final String item;
  final String quantity;
  final String size;
  final String image;
  final String status;
  final Color color;
  final Color textcolor;

  const CustomFormWidget({
    Key? key,
    required this.item,
    required this.quantity,
    required this.size,
    required this.status,
    required this.image,
    required this.color,
    required this.textcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 335.w,
          height: 110.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffFFFFFF),
              boxShadow: [ColorUtils().softShadow]),
          child: Padding(
            padding: const EdgeInsets.only(right: 5.0, top: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Item " + item,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Quantity : ' + quantity,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'size : ' + size,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: textcolor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset(
                      'assets/pngs/basket.png',
                      height: 18.h,
                      width: 17.45.w,
                      color: color,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 335.w,
          height: 110.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffFFFFFF),
              boxShadow: [ColorUtils().softShadow]),
          child: Padding(
            padding: const EdgeInsets.only(right: 9.0, top: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Item " + item,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Quantity : ' + quantity,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'size : ' + size,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.green,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 335.w,
          height: 110.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffFFFFFF),
              boxShadow: [ColorUtils().softShadow]),
          child: Padding(
            padding: const EdgeInsets.only(right: 5.0, top: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Item " + item,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Quantity : ' + quantity,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'size : ' + size,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15.w,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.green,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
