import 'package:clubhouse/OnBoarding/screen1.dart';
import 'package:clubhouse/OnBoarding/screen1_1.dart';
import 'package:clubhouse/OnBoarding/screen1_2.dart';
import 'package:flutter/material.dart';

class OnboardingController extends StatefulWidget {
  const OnboardingController({super.key});

  @override
  State<OnboardingController> createState() => _OnboardingControllerState();
}

class _OnboardingControllerState extends State<OnboardingController> {
  var screens = [
    Screen1(),
    Screen1_1(),
    Screen1_2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) => screens[index],
      ),
    );
  }
}
