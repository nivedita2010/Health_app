import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Pincode extends StatefulWidget {
  TextEditingController controller;
  Function(String) onChange;
  Pincode({
    super.key,
    required this.controller,
    required this.onChange,
  });

  @override
  State<Pincode> createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 58,
      margin: EdgeInsets.fromLTRB(12, 8, 12, 8),
      //margin: EdgeInsets.only(left: 8),
      child: TextField(
          controller: widget.controller,
          onChanged: widget.onChange,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade500)),
          )),
    );
  }
}
