import 'package:flutter/material.dart';

class Screen_7 extends StatefulWidget {
  const Screen_7({super.key});

  @override
  State<Screen_7> createState() => _Screen_7State();
}

class _Screen_7State extends State<Screen_7> {
  TextEditingController textController = TextEditingController();
  bool isTextFieldFilled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
                width: 70,
              ),
              const Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Image(
                    image: AssetImage("assets/cupcake.jpg"),
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const Text(
                "what's your age?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextFormField(
                    controller: textController,
                    onChanged: (value) {
                      setState(() {
                        isTextFieldFilled = value.isNotEmpty;
                      });
                    },
                    decoration: InputDecoration(
                      fillColor: Color(0xffe0e0c5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "this is to personalize your experience and will not be ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "visible on your profile ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        minimumSize: Size(double.infinity, 50),
                        primary: isTextFieldFilled
                            ? Color(0xff3870df)
                            : Color(0xffc8e2fb),
                      ),
                      onPressed: () {},
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              'next',
                              style: TextStyle(fontSize: 20),
                            )),
                            Icon(Icons.arrow_forward),
                          ])))
            ]),
      ),
    );
  }
}
