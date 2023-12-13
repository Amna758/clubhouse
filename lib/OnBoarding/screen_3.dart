import 'package:clubhouse/OnBoarding/screen_4.dart';
import 'package:fancy_password_field/fancy_password_field.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Center(
                child: Text(
                  "enter the code we just texted you",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(70.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Color(0xfff9f9ef),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const Text(
              "did'nt get it?Tap to resend",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "i lost access to my phone number",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
            const SizedBox(
              height: 50,
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
                          builder: (context) => Screen4(),
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
