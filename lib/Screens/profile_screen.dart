import 'package:arcemployee/profile_screens_navigate/car_expiry_screen.dart';
import 'package:arcemployee/profile_screens_navigate/change_email_screen.dart';
import 'package:arcemployee/profile_screens_navigate/change_name.dart';
import 'package:arcemployee/profile_screens_navigate/change_password_screen.dart';
import 'package:arcemployee/profile_screens_navigate/outstanding_items_task.dart';
import 'package:arcemployee/profile_screens_navigate/your_training_screen.dart';
import 'package:arcemployee/utils/color_utils.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widgets_Components/custom_back_button.dart';
import '../profile_screens_navigate/profile_address_screen.dart';
import '../utils/font_utils.dart';

List icons = [
  'assets/pngs/profile.svg',
  'assets/pngs/messsage.svg',
  'assets/pngs/lock.svg',
  'assets/pngs/location.svg',
  'assets/pngs/task.svg',
  'assets/pngs/traning.svg',
  'assets/pngs/car.svg'
];

List names = [
  'Change Name',
  'Change Email',
  'Change Password',
  'Change Address',
  'Outstanding item or tasks',
  'Your Training',
  'Cars & DBS Expiry Date'
];

final pages = [
  ChangeName(),
  ChangeEmail(),
  ChangePassword(),
  ProfileAddress(),
  OutStandingItemsTask(),
  YourTraning(),
  CarExpiryScreen(),
];
int? index;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.backgroundColor,
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
        title: Text(
          'Profile',
          style: TextStyle(
              color: Color(0xffAF1F25),
              fontSize: 20.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage:
                          AssetImage('assets/pngs/circle_profile_icon.png'),
                      radius: 40,
                    ),
                    SvgPicture.asset(
                      'assets/icons/camera_stack_icon.svg',
                      width: 20.w,
                      height: 20.h,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Alfredo Culhane',
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: icons.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => pages[index],
                            ),
                          );
                        },
                        child: RowWidget(
                          imageURI: icons[index],
                          nameString: names[index],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  final String imageURI;
  final String nameString;

  RowWidget({
    Key? key,
    required this.imageURI,
    required this.nameString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 50.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [ColorUtils().softShadow]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  imageURI,
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(width: 10.w),
                Text(
                  nameString,
                  style: TextStyle(
                      fontSize: 14.sp, fontFamily: FontUtils.Poppinsnormal),
                )
              ],
            ),
            SvgPicture.asset(
              "assets/pngs/forward_icon.svg",
              height: 14.h,
              width: 7.w,
            ),
          ],
        ),
      ),
    );
  }
}
