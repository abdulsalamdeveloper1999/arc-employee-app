import 'package:arcemployee/Screens/clients_records.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';

class ClientVisitScreeenTwo extends StatefulWidget {
  const ClientVisitScreeenTwo({Key? key}) : super(key: key);

  @override
  State<ClientVisitScreeenTwo> createState() => _ClientVisitScreeenTwoState();
}

class _ClientVisitScreeenTwoState extends State<ClientVisitScreeenTwo> {
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
            Column(
              children: [
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => ClientsRecord());
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                        width: 335.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [ColorUtils().softShadow],
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Visit',
                                    style: FontUtils.ksmallblackstyle,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    'assigned to',
                                    style: FontUtils.ksmallstyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Lydia Aminoff',
                                    style: FontUtils.kextralargestyle,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/watchClientScreentwo.svg'),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    '10 May 2022 09:45-10:30',
                                    style: FontUtils.kmediumblackstyle,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
