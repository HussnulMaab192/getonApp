import 'package:brum_brum_ride_electric/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constains/app_colors.dart';

Column dotContainer(int currentIndex) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            3,
            (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 600),
                  margin: const EdgeInsets.only(left: 5),
                  width: currentIndex == index ? 42.w : 22.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? primaryColor : Colors.grey,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                )),
      ),
      SizedBox(
        height: 20.h,
      ),
      currentIndex == 2
          ? SizedBox(
              width: 122.w,
              height: 37.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Get.toNamed(AppRoutes.userVerification);
                },
                child: const Text(
                  "Get Started",
                ),
              ),
            )
          : SizedBox(
              width: 122.w,
              height: 37.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {},
                child: const Text(
                  "Next",
                ),
              ),
            ),
      currentIndex == 2
          ? const SizedBox()
          : TextButton(
              onPressed: () {},
              child: const Text(
                "Skip",
                style: TextStyle(color: Colors.black),
              ),
            ),
    ],
  );
}
