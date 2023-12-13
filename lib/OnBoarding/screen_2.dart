import 'package:clubhouse/OnBoarding/screen_3.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController textController = TextEditingController();
  bool isTextFieldFilled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(40.0),
          child: Center(
            child: Text(
              "what's your number?",
              style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: textController,
            onChanged: (value) {
              setState(() {
                isTextFieldFilled = value.isNotEmpty;
              });
            },
            decoration: InputDecoration(
                prefixIcon: CountryCodePicker(
                  initialSelection: "PK",
                  onChanged: (value) {
                    print(value.code);
                  },
                  showFlag: true,
                ),
                hintText: "phone number",
                fillColor: Color(0xfff9f9ef),
                filled: true,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: RichText(
              text: const TextSpan(children: <TextSpan>[
            TextSpan(
                text: "By entering your number,you'r agreeng to our ",
                style: TextStyle(color: Color(0xff585858))),
            TextSpan(
                text: "Terms of Services ",
                style: TextStyle(color: Colors.blue)),
            TextSpan(text: "and ", style: TextStyle(color: Color(0xff585858))),
            TextSpan(
                text: "Privacy Policy ", style: TextStyle(color: Colors.blue)),
            TextSpan(
                text: ",thanks!", style: TextStyle(color: Color(0xff585858))),
          ])),
        ),
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen3(),
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
    )));
  }
}
