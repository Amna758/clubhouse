import 'package:clubhouse/OnBoarding/screen_6.dart';
import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "your username",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "@joshua672",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "change your username",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: Size(double.infinity, 50),
                    //    primary:
                    // isTextFieldFilled ? Color(0xff3870df) : Color(0xffc8e2fb),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen6(),
                        ));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "next",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
