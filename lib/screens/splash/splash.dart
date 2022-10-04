import 'package:brum_brum_ride_electric/constains/app_colors.dart';
import 'package:brum_brum_ride_electric/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    gotoPage();
  }

  Future<void> gotoPage() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Get.offAllNamed(AppRoutes.onBoarding);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: Body(),
    );
  }
}
