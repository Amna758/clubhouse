import 'package:clubhouse/OnBoarding/screen_2.dart';
import 'package:flutter/material.dart';

class Screen1_2 extends StatefulWidget {
  const Screen1_2({super.key});

  @override
  State<Screen1_2> createState() => _Screen1_2State();
}

class _Screen1_2State extends State<Screen1_2> {
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
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'thats your clubhous\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontFamily: "ft",
                                color: Color(0xff797876),
                              ),
                            ),
                            TextSpan(
                              text: 'clubhouse',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                fontFamily: "ft",
                                color: Color(0xff262425),
                              ),
                            ),
                            TextSpan(
                              text: '.\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "ft",
                                fontSize: 30,
                                color: Color(0xff797876),
                              ),
                            ),
                            TextSpan(
                              text: 'Lets get yours get your set up...',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "ft",
                                fontSize: 30,
                                color: Color(0xff797876),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen2(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("get started"),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                    )
                  ]))
            ])));
  }
}
