import 'package:arcemployee/Widgets_Components/custom_button.dart';
import 'package:arcemployee/home.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:arcemployee/utils/font_utils.dart';
import 'package:arcemployee/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 60.h),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      ImageUtils.homeicon,
                      height: 150.h,
                      width: 170.w,
                    ),
                  ),
                  SizedBox(height: 100.h),
                  _textformfieldofLogIn(
                    hinttext: "access.name.com",
                    prefixtext: "Server",
                    obsecure: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  _textformfieldofLogIn(
                    hinttext: "name@",
                    prefixtext: "User Name",
                    obsecure: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  _textformfieldofLogIn(
                      hinttext: "****", prefixtext: "Pin", obsecure: true),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomButton(
                    buttonText: "Log in",
                    onPress: () {
                      Get.to(
                        () => Home(),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _textformfieldofLogIn extends StatelessWidget {
  final hinttext;
  final prefixtext;
  final bool obsecure;

  const _textformfieldofLogIn({
    Key? key,
    required this.hinttext,
    required this.prefixtext,
    required this.obsecure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 335.w,
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      child: Center(
        child: TextFormField(
          obscureText: obsecure,
          obscuringCharacter: "*",
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: ColorUtils.greyColor,
              ),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            prefix: Text(
              prefixtext,
              style: FontUtils.kextralargestyle,
            ),
            hintTextDirection: TextDirection.rtl,
            hintText: hinttext,
            prefixStyle: TextStyle(
                color: Colors.grey,
                fontFamily: FontUtils.Poppinsnormal,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
