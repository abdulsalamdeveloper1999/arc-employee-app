import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets_Components/red_button_widget.dart';
import '../utils/color_utils.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 14,
                ),
                Text(
                  'Back',
                  style: TextStyle(color: Colors.black, fontSize: 12.sp),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 335.w,
                height: 174.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      DetailTextWiget(
                        leftSideTxt: 'Service user name :',
                        rightSideTxt: 'Name 1',
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      DetailTextWiget(
                          leftSideTxt: 'Employee name :',
                          rightSideTxt: 'Name 2'),
                      SizedBox(
                        height: 5.h,
                      ),
                      DetailTextWiget(
                          leftSideTxt: 'Total task :', rightSideTxt: '10'),
                      SizedBox(
                        height: 5.h,
                      ),
                      DetailTextWiget(
                          leftSideTxt: 'Working time :',
                          rightSideTxt: '1 hour'),
                      SizedBox(
                        height: 5.h,
                      ),
                      DetailTextWiget(
                          leftSideTxt: 'Travel distance :',
                          rightSideTxt: '2.8 mile'),
                      SizedBox(
                        height: 5.h,
                      ),
                      DetailTextWiget(
                          leftSideTxt: 'Travel time :', rightSideTxt: '27 min'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                width: 335.w,
                height: 127.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      DetailTextWiget(
                        leftSideTxt: 'Care hour charge :',
                        rightSideTxt: '£ 15.00',
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      DetailTextWiget(
                          leftSideTxt: 'Call out fee :',
                          rightSideTxt: '£ 2.00'),
                      SizedBox(
                        height: 5.h,
                      ),
                      DetailTextWiget(
                          leftSideTxt: 'Mileage :', rightSideTxt: '£ 4.00'),
                      SizedBox(
                        height: 5.h,
                      ),
                      DetailTextWiget(
                          leftSideTxt: 'Travel time fee :',
                          rightSideTxt: '£ 1.50'),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            RedButtonWidget(
              buttonText: 'Download',
            ),
          ],
        ),
      ),
    );
  }
}
