import 'package:flutter/material.dart';
import 'package:health_app/my_textfield.dart';

class LoginEmail extends StatelessWidget {
   LoginEmail({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
           padding: EdgeInsets.only(top: 63,left: 16),
           child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
           Text("Login",style: TextStyle(
               fontSize: 24,
               fontWeight: FontWeight.w600
           ),),

          SizedBox(height: 16,),
             Text("Please login to your account",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
            )),
               SizedBox(height: 30,),
               MyTextField(controller: usernameController,
                   hintText: "Enter Email",
                   obscureText: false),
               SizedBox(
                 height: 20,
               ),
               MyTextField(controller: passwordController,
                   hintText: "Enter Password",
                   obscureText: true),
           ],),
          ),

        ],
      ),
    );
  }
}
