import 'dart:math';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffb19c99),
            body: Column(children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/handwave.png"))),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: const BoxDecoration(
                      color: Color(0xffc1bab4),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  width: double.infinity,
                  child: Column(children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Container(
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 5.0,
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage(
                            "assets/avatar1.webp",
                          ), // Set your avatar image
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: RichText(
                        text: const TextSpan(
                          // style: DefaultTextStyle.of(context).style,

                          children: <TextSpan>[
                            TextSpan(
                              text: 'imagine if you had one huge\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                fontFamily: "ft",
                                color: Color(0xff797876),
                              ),
                            ),
                            TextSpan(
                              text: 'group voice note\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                fontFamily: "ft",
                                color: Color(0xff262425),
                              ),
                            ),
                            TextSpan(
                              text: 'with all your friends....',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "ft",
                                fontSize: 35,
                                color: Color(0xff797876),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]))
            ])));
  }
}
