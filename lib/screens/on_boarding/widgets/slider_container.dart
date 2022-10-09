// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:brum_brum_ride_electric/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constains/app_colors.dart';

// ignore: must_be_immutable
class DotContainer extends StatefulWidget {
  var currentIndex;

  final controller;
  DotContainer({super.key, this.currentIndex, this.controller});

  @override
  State<DotContainer> createState() => _DotContainerState();
}

class _DotContainerState extends State<DotContainer> {
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              3,
              (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    margin: const EdgeInsets.only(left: 5),
                    width: widget.currentIndex == index ? 42.w : 22.w,
                    height: 6.h,
                    decoration: BoxDecoration(
                      color: widget.currentIndex == index
                          ? primaryColor
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  )),
        ),
        SizedBox(
          height: 20.h,
        ),
        widget.currentIndex == 2
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
                  onPressed: () {
                    setState(() {
                      if (widget.currentIndex >= 0 && widget.currentIndex < 2) {
                        widget.currentIndex = widget.currentIndex + 1;
                        widget.controller
                            .nextPage(duration: _kDuration, curve: _kCurve);
                      }
                      if (widget.currentIndex == 3 && widget.currentIndex > 0) {
                        widget.currentIndex = widget.currentIndex + 1;
                        widget.controller
                            .previousPage(duration: _kDuration, curve: _kCurve);
                      }
                    });
                  },
                  child: const Text(
                    "Next",
                  ),
                ),
              ),
        widget.currentIndex == 2
            ? const SizedBox()
            : TextButton(
                onPressed: () {
                  setState(() {
                    {
                      widget.currentIndex = 2;
                      widget.controller.animateToPage(widget.currentIndex,
                          curve: Curves.decelerate,
                          duration: const Duration(milliseconds: 300));
                    }
                  });
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.black),
                ),
              ),
      ],
    );
  }
}
