import 'dart:ui';

import 'package:clubhouse/splashservices.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Splashservices splsh = Splashservices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Splashservices.isLog(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/scr.webp",
            fit: BoxFit.fill,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Image.asset(
                    "assets/handwave.png",
                    height: 100,
                    width: 100,
                  ),
                  const Text(
                    "clubhouse",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                        fontFamily: 'ft'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
