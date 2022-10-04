import 'package:brum_brum_ride_electric/constains/file_paths.dart';
import 'package:brum_brum_ride_electric/controllers/user_ver_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'lower_container.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Get.put(VerifyUser());
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // PICTURE  - CONTAINER
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 400.h,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(FilePath.userVerification),
              ),
            ),
          ),
        ),
        // LOWER  - CONTAINER
        Positioned(
            top: 250, left: 0, bottom: 0, right: 0, child: LowerContainer()),
      ],
    );
  }
}
