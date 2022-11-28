import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../utils/color_utils.dart';

class AddVisitNoteScreen extends StatefulWidget {
  const AddVisitNoteScreen({Key? key}) : super(key: key);

  @override
  State<AddVisitNoteScreen> createState() => _AddVisitNoteScreenState();
}

class _AddVisitNoteScreenState extends State<AddVisitNoteScreen> {
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
            padding: const EdgeInsets.only(left: 22, right: 18, top: 15),
            child: Container(
              width: 335.w,
              height: 250.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [ColorUtils().softShadow],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Note',
                      style: FontUtils.kextralargestyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 335,
                          height: 155,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color(0xffABABAB),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 1),
                            child: TextFormField(
                              textDirection: TextDirection.rtl,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText: 'Type Here',
                                hintStyle: FontUtils.ksmallstyle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.only(left: 22, right: 18, top: 15, bottom: 10),
            child: CustomButton(
              buttonText: 'Submit',
              onPress: () {
                Get.back();
              },
            ),
          )
        ],
      ),
    );
  }
}
