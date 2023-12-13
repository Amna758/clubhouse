import 'dart:async';

import 'package:clubhouse/OnBoarding/OnboardingController.dart';
import 'package:clubhouse/OnBoarding/screen1.dart';
import 'package:flutter/material.dart';

class Splashservices {
  static void isLog(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => OnboardingController())));
  }
}
