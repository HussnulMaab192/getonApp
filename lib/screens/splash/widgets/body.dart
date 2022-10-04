import 'package:brum_brum_ride_electric/constains/file_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // LOGO
        Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(FilePath.logo),
        ),
        // HEADER SVG
        Positioned(
          top: 0,
          right: 0,
          child: SvgPicture.asset(FilePath.header),
        ),
        // FOOTER - SVG
        Positioned(
          bottom: 0,
          left: 0,
          child: SvgPicture.asset(FilePath.footer),
        ),
      ],
    );
  }
}
