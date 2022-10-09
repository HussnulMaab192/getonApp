import 'package:brum_brum_ride_electric/screens/on_boarding/widgets/on_boading_json.dart';
import 'package:brum_brum_ride_electric/screens/on_boarding/widgets/stats.dart';
import 'package:flutter/material.dart';
import 'slider_container.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _controller = PageController();

  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: list.length,
            itemBuilder: (context, index) {
              return customStats(currentIndex);
            },
          ),
        ),
        // ADDING - SLIDER
        Expanded(
            child: DotContainer(
          currentIndex: currentIndex,
          controller: _controller,
        )),
      ],
    );
  }
}
