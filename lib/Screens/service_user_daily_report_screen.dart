import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/Widgets_Components/custom_text_field.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../Widgets_Components/custom_back_button.dart';

class ServiceUserDailyReportScreen extends StatefulWidget {
  const ServiceUserDailyReportScreen({Key? key}) : super(key: key);

  @override
  State<ServiceUserDailyReportScreen> createState() =>
      _ServiceUserDailyReportScreenState();
}

class _ServiceUserDailyReportScreenState
    extends State<ServiceUserDailyReportScreen> {
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
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  reuseForm(
                    text: 'Height',
                  ),
                  reuseForm(text: "Weight"),
                  reuseForm(text: "Weight"),
                  reuseForm(text: "Blood pressure"),
                  reuseForm(text: "Pulse rate"),
                  reuseForm(text: "Urine output"),
                  reuseForm(text: "Bowel movements"),
                  reuseForm(text: "Type of Stool(*if applicable)"),
                  reuseForm(text: "Complaints"),
                  reuseForm(text: "Any new sign and symtoms"),
                  reuseForm(text: "How would the person describe their mood?"),
                  reuseForm(
                      text:
                          "How would the person describe their general pain out of 10?"),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Are these results usual for the individual?'),
                  Row(
                    children: [
                      Row(
                        children: [
                          RoundCheckBox(
                            onTap: (selected) {},
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Yes')
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          RoundCheckBox(
                            onTap: (selected) {},
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('No')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  reuseForm(text: "Any other concerns?"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(buttonText: "Update", onPress: () {}),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class reuseForm extends StatelessWidget {
  final String text;

  const reuseForm({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$text',
          style: FontUtils.kextralargestyle,
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextField(hintText: 'Type here....'),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
