import 'package:flutter/Material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color_utils.dart';

class CustomFormsUploadDocument extends StatefulWidget {
  const CustomFormsUploadDocument({Key? key}) : super(key: key);

  @override
  State<CustomFormsUploadDocument> createState() =>
      _CustomFormsUploadDocumentState();
}

class _CustomFormsUploadDocumentState extends State<CustomFormsUploadDocument> {
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
            Padding(
              padding: const EdgeInsets.only(right: 157),
              child: Image(
                alignment: Alignment.center,
                image: AssetImage('assets/images/ArchitectureLogo1.png'),
                fit: BoxFit.cover,
                height: 50.h,
                width: 60.w,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Form Title',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type here',
                      fillColor: Color(0xffFCFCFC),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Form Title',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Type here',
                      fillColor: Color(0xffFCFCFC),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Upload document',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 100.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      color: Color(0xffDEDEDE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/pngs/uploaddocument .png',
                          height: 20.h,
                          width: 26.w,
                        ),
                        Text(
                          'Upload Dcoument',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Color(0xff8F919B)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 333.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: ColorUtils.redcolor,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(
                      0,
                      4,
                    ), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Submit',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
