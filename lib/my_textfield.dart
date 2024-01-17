import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  Function(String) onChange;
  MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.onChange,
      this.suffixIcon });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.zero,
       //padding: EdgeInsets.only( right:16,top:10,bottom: 10),
    child: TextFormField(
    controller: controller,
      onChanged: onChange,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon??null,
        contentPadding: EdgeInsets.only(top: 10,bottom: 10,left: 16),
        hintText: hintText,
        isDense: true,
        hintStyle: TextStyle(color: Color(0xff767B81),fontSize: 16,),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade500)),



        )
      ),
    );
  }
}
