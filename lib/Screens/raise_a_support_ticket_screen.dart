import 'package:arcemployee/Screens/rasie_a_support_textform_screen.dart';
import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';

class RaiseTicketScreen extends StatefulWidget {
  const RaiseTicketScreen({Key? key}) : super(key: key);

  @override
  State<RaiseTicketScreen> createState() => _RaiseTicketScreenState();
}

class _RaiseTicketScreenState extends State<RaiseTicketScreen> {
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
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 600.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RaiseaTicketWidget(
                            nameText: 'Name',
                            roleText: 'Role',
                            nameTextans: 'Employe 1',
                            roleTextanswer: 'Staff member',
                            contactText: 'Preferred method of contact',
                            contactTextanswser: 'In-app Message',
                            descriptionText: 'Description',
                            reasonText:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate faucibus nunc.',
                            reasonTextanswer: 'Reason',
                            descriptionTextanswer:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate faucibus nunc.'),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    );
                  },
                ),
              ),
              CustomButton(
                  buttonText: "Create new Raise a support ticket ",
                  onPress: () {
                    Get.to(() => RaiseSupportTextFormScreen());
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class RaiseaTicketWidget extends StatelessWidget {
  final String nameText;
  final String nameTextans;
  final String roleText;
  final String roleTextanswer;
  final String contactText;
  final String contactTextanswser;
  final String descriptionText;
  final String descriptionTextanswer;
  final String reasonText;
  final String reasonTextanswer;

  const RaiseaTicketWidget({
    Key? key,
    required this.nameText,
    required this.roleText,
    required this.nameTextans,
    required this.roleTextanswer,
    required this.contactText,
    required this.contactTextanswser,
    required this.descriptionText,
    required this.reasonText,
    required this.reasonTextanswer,
    required this.descriptionTextanswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 439.h,
      width: 335.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              nameText,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              nameTextans,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              roleText,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              roleTextanswer,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              contactText,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              contactTextanswser,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              descriptionText,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              descriptionTextanswer,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              contactText,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              contactTextanswser,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              reasonText,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              reasonTextanswer,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
