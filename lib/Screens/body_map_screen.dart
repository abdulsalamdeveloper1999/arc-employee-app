import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets_Components/custom_back_button.dart';

class BodyMapScreen extends StatefulWidget {
  const BodyMapScreen({Key? key}) : super(key: key);

  @override
  State<BodyMapScreen> createState() => _BodyMapScreenState();
}

List listimages = [
  "assets/icons/humanvector.svg",
  "assets/icons/backside.svg",
  "assets/icons/rightside.svg",
];
List listName = [
  "Front Side",
  "Back Side",
  "Right Side",
];

bool _bool = true;

int changeImage = 0;

class _BodyMapScreenState extends State<BodyMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorUtils.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85.h,
        backgroundColor: Colors.white.withOpacity(0.6),
        leading: Row(
          children: [
            CustomBackButton(),
          ],
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Image.asset(
                'assets/images/ArchitectureLogo1.png',
                height: 50,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset('assets/icons/eraseappbaricon.svg'),
                    SvgPicture.asset(
                      'assets/icons/pencilappbaricon.svg',
                      clipBehavior: Clip.hardEdge,
                      theme: SvgTheme(),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Select Injuries body Part',
                          style: FontUtils.kextralargestyle,
                        ),
                        SizedBox(
                          height: 20.h,
                        ), //////////////////////////////////////////
                        ///////////////////////////////////////////
                        AnimatedCrossFade(
                          firstChild: SvgPicture.asset(
                            listimages[0],
                            height: 300,
                            width: 135,
                          ),
                          secondChild: SvgPicture.asset(
                            listimages[1],
                            height: 300,
                            width: 135,
                          ),
                          crossFadeState: _bool
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          duration: Duration(milliseconds: 600),
                        ),

                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (changeImage != 2) {
                                  changeImage++;
                                  print("cahnge");
                                  setState(
                                    () {
                                      _bool = !_bool;
                                      listName[changeImage];
                                      listimages[changeImage];
                                    },
                                  );
                                } else {
                                  changeImage = 0;
                                  setState(() {
                                    listimages[0];
                                    listName[0];
                                  });
                                }
                              },
                              child: SvgPicture.asset(
                                  'assets/icons/backarrow.svg'),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              listName[changeImage],
                              style: TextStyle(
                                fontFamily: FontUtils.Poppinsnormal,
                                color: Colors.black,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            GestureDetector(
                                onTap: () {
                                  if (changeImage != 2) {
                                    print("change");
                                    setState(
                                      () {
                                        _bool = !_bool;
                                        changeImage++;
                                        listName[changeImage];
                                        listimages[changeImage];
                                      },
                                    );
                                  } else {
                                    changeImage = 0;
                                    setState(() {
                                      listimages[0];
                                      listName[0];
                                    });
                                  }
                                },
                                child: SvgPicture.asset(
                                    'assets/icons/forwardarrow.svg')),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Any Note'),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          width: 335,
                          height: 125,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, bottom: 10),
                  child: CustomButton(
                    buttonText: 'Submit',
                    onPress: () {
                      Get.back();
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
