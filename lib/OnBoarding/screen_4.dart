import 'package:clubhouse/OnBoarding/screen_5.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  TextEditingController textController = TextEditingController();
  bool isTextFieldFilled = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Text(
                "what's your full name",
                style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 50,
                  width: 100,
                  // decoration:
                  //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "first",
                        hintStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 50,
                  width: 100,
                  // decoration:
                  //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: textController,
                    onChanged: (value) {
                      setState(() {
                        isTextFieldFilled = value.isNotEmpty;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Last",
                        hintStyle: TextStyle(fontSize: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
              ),
            ],
          ),
          Text("people use real names in clubhouse "),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen5(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  primary:
                      isTextFieldFilled ? Color(0xff3870df) : Color(0xffc8e2fb),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "next",
                      style: TextStyle(fontSize: 25),
                    )),
                    Icon(Icons.arrow_forward)
                  ],
                )),
          )
        ]),
      ),
    ));
  }
}
