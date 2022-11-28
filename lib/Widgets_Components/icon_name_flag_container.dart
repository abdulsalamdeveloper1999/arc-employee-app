import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/font_utils.dart';

class FlagContainerWidget extends StatelessWidget {
  final String svgURI;
  final String nameOfContainer;

  const FlagContainerWidget({
    Key? key,
    required this.svgURI,
    required this.nameOfContainer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                SvgPicture.asset(svgURI),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  nameOfContainer,
                  style: FontUtils.kmediumblackstyle,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 17.0),
          child: SvgPicture.asset(
            'assets/pngs/flagicon.svg',
            height: 26.h,
            width: 26.w,
          ),
        )
      ],
    );
  }
}
