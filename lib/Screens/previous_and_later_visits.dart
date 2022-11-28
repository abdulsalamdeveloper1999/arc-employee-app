import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widgets_Components/custom_back_button.dart';

class PreviousAndLaterVisits extends StatefulWidget {
  const PreviousAndLaterVisits({Key? key}) : super(key: key);

  @override
  State<PreviousAndLaterVisits> createState() => _PreviousAndLaterVisitsState();
}

class _PreviousAndLaterVisitsState extends State<PreviousAndLaterVisits> {
  int _value = 1;

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
        actions: [
          DropdownButton(
            dropdownColor: Colors.white,
            elevation: 10,
            icon: Visibility(visible: false, child: Icon(Icons.arrow_downward)),
            value: _value,
            items: [
              DropdownMenuItem(
                child: Padding(
                  padding: const EdgeInsets.only(left: 70.0, top: 10),
                  child: SvgPicture.asset("assets/icons/actionSettingIcon.svg"),
                ),
                value: 1,
              ),
              DropdownMenuItem(child: Text("Previous Visits"), value: 2),
              DropdownMenuItem(child: Text("Late Visits"), value: 3)
            ],
            /////////////////

            onChanged: (int? value) {
              setState(
                () {
                  // _value = value!;
                },
              );
            },
          )
          // Padding(
          //   padding: const EdgeInsets.only(right: 8.0),
          //   child: SvgPicture.asset("assets/icons/actionSettingIcon.svg"),
          // ),
        ],
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
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                      width: 335.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [ColorUtils().softShadow],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Visit assigned to",
                            style: FontUtils.kleftAcal,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Lydia Aminoff",
                            style: FontUtils.kextralargestyle,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  "assets/icons/watchClientScreentwo.svg"),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "10 May 2022 09:45-10:30",
                                style: FontUtils.kstyle,
                              )
                            ],
                          )
                        ],
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
