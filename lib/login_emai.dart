import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/forgotPassword.dart';
import 'package:health_app/login.dart';
import 'package:health_app/my_textfield.dart';

import 'button_widget.dart';

class LoginEmail extends StatefulWidget {
  LoginEmail({super.key});

  @override
  State<LoginEmail> createState() => _LoginEmailState();
}

class _LoginEmailState extends State<LoginEmail> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 63, left: 16, right: 16),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),

          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Text("Please login to your account",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: MyTextField(
                controller: usernameController,
                hintText: "Enter Email",
                onChange: (text) {
                  print("user name is -> $text");
                  setState(() {});
                },
                obscureText: false),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: MyTextField(
              controller: passwordController,
              onChange: (text) {
                setState(() {});
              },
              hintText: "Enter Password",
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.only(top: 63, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: const Text(
                    "Login with Number",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),

          ButtonWidget(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder:(context) => PinInput(), ));
            },
            buttonText: 'Login',
            buttonColor: (usernameController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty)
                ? Color(0xff1470FB)
                : Color(0xffD2D5DB),
            borderRadius: 10,
            textColor: Colors.white,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPassword(),
                    ));
              },
              child: const Text(
                "Forgot password?",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Or Sign in with",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                    child: Divider(
                  thickness: 1,
                )),
              ],
            ),
          ),
          SizedBox(
            height: 27,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffD2D5DB),
                child: SvgPicture.asset('assets/google.svg'),
              ),
              SizedBox(
                width: 24,
              ),
              CircleAvatar(
                radius: 20,
                child: SvgPicture.asset('assets/facebook.svg'),
              ),
              SizedBox(
                width: 24,
              ),
              CircleAvatar(
                radius: 20,
                child: SvgPicture.asset('assets/applelogo.svg'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          // ],),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(bottom: 34, left: 35),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do not have an account ?",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Text('By Clicking on login , i agree to '),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Teams & Conditions",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
