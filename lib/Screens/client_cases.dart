import 'package:arcemployee/Screens/body_map_screen.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';

class ClientCasesScreen extends StatefulWidget {
  const ClientCasesScreen({Key? key}) : super(key: key);

  @override
  State<ClientCasesScreen> createState() => _ClientCasesScreenState();
}

class _ClientCasesScreenState extends State<ClientCasesScreen> {
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
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                height: 50.h,
                width: 335.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [ColorUtils().softShadow],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/list_red.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Medical Results'),
                        ],
                      ),
                      SvgPicture.asset('assets/icons/forward.svg'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                height: 50.h,
                width: 335.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [ColorUtils().softShadow],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/list_red.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Other documentation'),
                        ],
                      ),
                      SvgPicture.asset('assets/icons/forward.svg'),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(
                    () => BodyMapScreen(),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                  height: 50.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [ColorUtils().softShadow],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/list_red.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Body Map'),
                          ],
                        ),
                        SvgPicture.asset('assets/icons/forward.svg'),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                height: 50.h,
                width: 335.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [ColorUtils().softShadow],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/list_red.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Key Code'),
                        ],
                      ),
                      SvgPicture.asset('assets/icons/forward.svg'),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
