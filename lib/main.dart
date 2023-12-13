import 'dart:ui';

import 'package:clubhouse/OnBoarding/screen1.dart';
import 'package:clubhouse/OnBoarding/screen1_1.dart';
import 'package:clubhouse/OnBoarding/screen1_2.dart';
import 'package:clubhouse/OnBoarding/screen7.dart';
import 'package:clubhouse/OnBoarding/screen8.dart';
import 'package:clubhouse/OnBoarding/screen_2.dart';
import 'package:clubhouse/OnBoarding/screen_3.dart';
import 'package:clubhouse/OnBoarding/screen_4.dart';
import 'package:clubhouse/OnBoarding/screen_5.dart';
import 'package:clubhouse/OnBoarding/screen_6.dart';
import 'package:clubhouse/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Screen_8());
  }
}
