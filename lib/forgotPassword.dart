import 'package:flutter/material.dart';
import 'package:health_app/button_widget.dart';
import 'package:health_app/homeScreen.dart';

import 'my_textfield.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController useremail_phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        // leading: Icon(Icons.arrow_back),
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
                    "Forgot Password",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 32),
                    child: Text("Please Enter Email or Phone number to get OPT",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  MyTextField(
                      controller: useremail_phone,
                      hintText: "Enter Email",
                      onChange: (text) {
                        print("user name is -> $text");
                        setState(() {});
                      },
                      obscureText: false),
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
              buttonColor: (useremail_phone.text.isNotEmpty)
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
