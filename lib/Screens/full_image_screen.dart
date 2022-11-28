import 'package:arcemployee/Screens/starting_visit_screen.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../Widgets_Components/checkmark.dart';
import 'end_visit_screen.dart';

class FullImageScreen extends StatefulWidget {
  const FullImageScreen({Key? key}) : super(key: key);

  @override
  State<FullImageScreen> createState() => _FullImageScreenState();
}

class _FullImageScreenState extends State<FullImageScreen> {
  @override
  void didChangeDependencies() {
    Future.delayed(
      Duration(seconds: 4),
    ).then(
      (value) => dialogBox(),
    );
    // Future.microtask(() => EndVisitScreen());

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  dialogBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Column(
          children: [
            Container(
              height: 230.h,
              width: 230.w,
              color: Colors.white,
              child:
                  Lottie.asset('assets/icons/greencheck.json', repeat: false),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Success! Visit has now started",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
    Future.delayed(Duration(seconds: 4), () {
      Get.to(() => EndVisitScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/icons/backgroundimagenewscree.jpg'),
            )),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
          ),
          Center(
            child: Image.asset(
              'assets/icons/Union.png',
              width: 335.w,
              height: 311.h,
            ),
          ),
        ],
      ),
    );
  }
}
