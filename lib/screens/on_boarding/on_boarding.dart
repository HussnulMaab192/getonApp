import 'package:brum_brum_ride_electric/constains/app_colors.dart';
import 'package:flutter/material.dart';
import 'widgets/body.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: const Body(),
    );
  }
}
