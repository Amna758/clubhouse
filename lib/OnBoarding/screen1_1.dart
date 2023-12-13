import 'package:flutter/material.dart';

class Screen1_1 extends StatefulWidget {
  const Screen1_1({super.key});

  @override
  State<Screen1_1> createState() => _Screen1_1State();
}

class _Screen1_1State extends State<Screen1_1> {
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
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Where everyon could ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: "ft",
                              color: Color(0xff797876),
                            ),
                          ),
                          TextSpan(
                            text: ' chat',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: "ft",
                              color: Color(0xff262425),
                            ),
                          ),
                          TextSpan(
                            text: ',\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "ft",
                              fontSize: 30,
                              color: Color(0xff797876),
                            ),
                          ),
                          TextSpan(
                            text: 'ask questions\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "ft",
                              fontSize: 30,
                              color: Color(0xff797876),
                            ),
                          ),
                          TextSpan(
                            text: 'say hi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              fontFamily: "ft",
                              color: Color(0xff262425),
                            ),
                          ),
                          TextSpan(
                            text: ',\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "ft",
                              fontSize: 30,
                              color: Color(0xff797876),
                            ),
                          ),
                          TextSpan(
                            text: ',and get to know each other....',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "ft",
                              fontSize: 30,
                              color: Color(0xff797876),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]))
          ])),
    );
  }
}
