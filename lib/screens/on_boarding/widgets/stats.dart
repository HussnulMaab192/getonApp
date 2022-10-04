import 'package:brum_brum_ride_electric/screens/on_boarding/widgets/on_boading_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../themes.dart';

Column customStats(int index) {
  return Column(
    children: [
      Container(
        width: Get.width,
        height: 350.h,
        margin: EdgeInsets.only(top: 32.h, bottom: 8.h),
        child: index == 1
            ? Image.asset(list[index]["image"]!)
            : SvgPicture.asset(
                list[index]["image"]!,
                fit: BoxFit.cover,
              ),
      )
      // TEXT
      ,
      Text(
        list[index]["title"]!,
        style: subHeadingStyle,
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 4.h,
      ),
      // description
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Text(
          list[index]["desc"]!,
          style: textHeadingStyle.copyWith(height: 1.3),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
