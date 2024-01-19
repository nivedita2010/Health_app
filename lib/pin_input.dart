import 'package:flutter/material.dart';
import 'package:health_app/button_widget.dart';
import 'package:health_app/homeScreen.dart';
import 'package:health_app/pin_code.dart';

class PinInput extends StatefulWidget {
  const PinInput({super.key});

  @override
  State<PinInput> createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Enter verification code",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text("Code has been sent to your number",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("+91 9876648563",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                      const SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Change",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  Row(
                    children: [
                      Pincode(
                        controller: pin1,
                        onChange: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                      ),
                      Pincode(
                        controller: pin2,
                        onChange: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                      ),
                      Pincode(
                        onChange: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        controller: pin3,
                      ),
                      Pincode(
                        onChange: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                          if (value.isEmpty) {
                            FocusScope.of(context).previousFocus();
                          }
                          setState(() {});
                          print(pin1.text);
                          print(pin2.text);
                          print(pin3.text);
                          print(pin4.text);
                          print(
                              "messagevalidation${pin1.text.isNotEmpty && pin2.text.isNotEmpty && pin3.text.isNotEmpty && pin4.text.isNotEmpty}");
                        },
                        controller: pin4,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text("Resend Code in :",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                      Text(" 00:30 ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            ButtonWidget(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              buttonText: 'Verify',
              buttonColor: (pin1.text.isNotEmpty &&
                      pin2.text.isNotEmpty &&
                      pin3.text.isNotEmpty &&
                      pin4.text.isNotEmpty)
                  ? Color(0xff1470FB)
                  : Color(0xffD2D5DB),
              borderRadius: 10,
              textColor: Color(0xff767B81),
            ),
          ],
        ),
      ),
    );
  }
}
