import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only( right:16,top:10,bottom: 10),
    child: TextFormField(

      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade500)),



        )
      ),
    );
  }
}
