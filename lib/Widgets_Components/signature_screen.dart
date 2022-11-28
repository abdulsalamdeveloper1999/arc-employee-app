import 'package:arcemployee/Screens/financial_transcation_sheet.dart';
import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/Widgets_Components/custom_grey_button.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:get/route_manager.dart';

import 'custom_back_button.dart';

class SignatureScreen extends StatefulWidget {
  const SignatureScreen({Key? key}) : super(key: key);

  @override
  State<SignatureScreen> createState() => _SignatureScreenState();
}

class _SignatureScreenState extends State<SignatureScreen> {
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: DottedLine(
                  dashLength: 5,
                  dashColor: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, right: 20, left: 20),
            child: Column(
              children: [
                CustomGreyButton(buttonText: 'Clear', onPress: () {}),
                SizedBox(
                  height: 20.h,
                ),
                CustomButton(
                  buttonText: 'Submit',
                  onPress: () {
                    Get.to((() => FinancialTransactionSheet()));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
